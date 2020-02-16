#include <map>
#include <sstream>

#include <Arduino.h>
#include <Wire.h>

#include <Adafruit_NeoPixel.h>
#include <BME280I2C.h>
#include <ESP8266WiFi.h>

#include <Sparkfun_APDS9301_Library.h>

#include "config/apds9301_config.h"
#include "config/i2c_config.h"
#include "config/leds_config.h"
#include "config/mqtt_config.h"
#include "config/wifi_config.h"

#include "helpers/display.h"
#include "helpers/mqtt.h"
#include "helpers/ota.h"

APDS9301 apds_;
BME280I2C::Settings settings(BME280::OSR_X1, BME280::OSR_X1, BME280::OSR_X1, BME280::Mode_Forced, BME280::StandbyTime_1000ms, BME280::Filter_Off,
                             BME280::SpiEnable_False, 0x77);
BME280I2C bme_(settings);
WiFiClient wifi_;
PubSubClient mqtt_(mqtt::server_ip, mqtt::server_port, wifi_);
Adafruit_NeoPixel pixels_(leds::number_of_leds, leds::controll_pin, NEO_GRB + NEO_KHZ800);

auto double_publisher = [](std::string topic, double value) {
    // get rid of magic numbers
    char str_value[8];
    dtostrf(value, 6, 2, str_value);
    mqtt_.publish(topic.c_str(), str_value);
};

auto handle_set_led = [](byte * string, unsigned int length) {
    // it probably can be done better.

    std::string strin(reinterpret_cast<char *>(string), length);

    uint8_t i = 0;
    uint16_t data[4];

    std::istringstream iss(strin);
    std::string item;
    while (std::getline(iss, item, ' '))
    {
        data[i++] = atoi(item.c_str());
    }

    pixels_.setPixelColor(data[0], pixels_.gamma32(pixels_.Color(data[1], data[2], data[3])));
};

std::map<std::string, std::function<void(byte * payload, unsigned int length)>> handle_topic{
{"set_led", handle_set_led},
{"show", [](byte * payload, unsigned int length) { pixels_.show(); }},
{"clear", [](byte * payload, unsigned int length) { pixels_.clear(); }},
{"get_brightness", [](byte * payload, unsigned int length) { double_publisher("brightness", apds_.readLuxLevel()); }},
{"get_temperature", [](byte * payload, unsigned int length) { double_publisher("temperature", bme_.temp(BME280::TempUnit_Celsius)); }},
{"get_humidity", [](byte * payload, unsigned int length) { double_publisher("humidity", bme_.hum()); }},
{"get_pressure", [](byte * payload, unsigned int length) { double_publisher("pressure", bme_.pres(BME280::PresUnit_hPa)); }}};

auto wait_for_initialization = [](std::function<bool(void)> checker, uint16_t status_led_inded, uint8_t red, uint8_t green, uint8_t blue) {
    display::turn_on_led(pixels_, status_led_inded, red, green, blue);
    while (checker())
    {
        delay(500);
    }
    display::clear(pixels_);
};

void setup()
{
    Wire.begin(i2c::sda_pin, i2c::scl_pin);

    pixels_.begin();

    ota::initialize();

    WiFi.begin(wifi::ssid, wifi::password);
    wait_for_initialization([]() { return not WiFi.status() == WL_CONNECTED; }, 0, 0, 0, 255);

    wait_for_initialization([]() { return not apds_.begin(apds9301::address) == APDS9301::status::SUCCESS; }, 0, 0, 255, 0);

    wait_for_initialization([]() { return not bme_.begin(); }, 0, 255, 0, 0);

    wait_for_initialization([]() { return not mqtt_.connect(mqtt::client_id); }, 0, 255, 0, 0);

    mqtt_.setCallback([](char * topic, byte * payload, unsigned int length) { handle_topic[topic](payload, length); });

    mqtt::subscribe(mqtt_, handle_topic);
}

void loop()
{
    ota::handle();
    mqtt_.loop();
}
