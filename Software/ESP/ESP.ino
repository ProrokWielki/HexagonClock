#include <map>
#include <sstream>

#include <Arduino.h>
#include <Wire.h>

#include <Adafruit_NeoPixel.h>
#include <BME280I2C.h>
#include <ESP8266WiFi.h>

#include <Sparkfun_APDS9301_Library.h>

#include <RemoteDebug.h>

#include "config/apds9301_config.h"
#include "config/i2c_config.h"
#include "config/leds_config.h"
#include "config/mqtt_config.h"
#include "config/wifi_config.h"

#include "helpers/display.h"
#include "helpers/mqtt.h"
#include "helpers/ota.h"

RemoteDebug Debug;

APDS9301 apds_;
BME280I2C::Settings settings(BME280::OSR_X1, BME280::OSR_X1, BME280::OSR_X1, BME280::Mode_Forced, BME280::StandbyTime_1000ms, BME280::Filter_Off,
                             BME280::SpiEnable_False, 0x77);
BME280I2C bme_(settings);
WiFiClient wifi_;
PubSubClient mqtt_(mqtt::server_ip, mqtt::server_port, wifi_);
Adafruit_NeoPixel pixels_(leds::number_of_leds, leds::controll_pin, NEO_GRB + NEO_KHZ800);

int debug_iterator=0;
bool is_turned_on=false;
long lastReconnectAttemptMqtt = 0;
long lastReconnectAttemptWifi = 0;
uint8_t reconnect_attempts = 0;

auto double_publisher = [](std::string topic, double value) {
    // get rid of magic numbers
    char str_value[8];
    dtostrf(value, 6, 2, str_value);
    mqtt_.publish(topic.c_str(), str_value);
};

uint8_t split_string_to_uints16(byte * string, unsigned int length, uint16_t * output)
{
    // it could be a tamplate function - maybe in the future :)
    std::string strin(reinterpret_cast<char *>(string), length);

    uint8_t i = 0;

    std::istringstream iss(strin);
    std::string item;
    while (std::getline(iss, item, ' '))
    {
        output[i++] = atoi(item.c_str());
    }

    return i;
}

auto handle_set_led = [](byte * string, unsigned int length) {
    uint16_t data[4];
    split_string_to_uints16(string, length, data);
    pixels_.setPixelColor(data[0], pixels_.gamma32(pixels_.Color(data[1], data[2], data[3])));
};

auto handle_fill_leds = [](byte * string, unsigned int length) {
    uint16_t data[5];
    split_string_to_uints16(string, length, data);
    pixels_.fill(pixels_.gamma32(pixels_.Color(data[0], data[1], data[2])), data[3], data[4]);
};

std::map<std::string, std::function<void(byte * payload, unsigned int length)>> handle_topic{
{"set_led", handle_set_led},
{"fill_leds", handle_fill_leds},
{"show", [](byte * payload, unsigned int length) { pixels_.show(); }},
{"clear", [](byte * payload, unsigned int length) { pixels_.clear(); }},
{"get_brightness", [](byte * payload, unsigned int length) { double_publisher("brightness", apds_.readLuxLevel()); }},
{"get_temperature", [](byte * payload, unsigned int length) { double_publisher("temperature", bme_.temp(BME280::TempUnit_Celsius)); }},
{"get_humidity", [](byte * payload, unsigned int length) { double_publisher("humidity", bme_.hum()); }},
{"get_pressure", [](byte * payload, unsigned int length) { double_publisher("pressure", bme_.pres(BME280::PresUnit_hPa)); }}};

auto wait_for_initialization = [](std::function<bool(void)> checker, uint16_t status_led_index, uint8_t red, uint8_t green, uint8_t blue) {
    display::turn_on_led(pixels_, status_led_index, red, green, blue);
    while (checker())
    {
        delay(500);
    }
    display::clear(pixels_);
};

void setup()
{
    Serial.begin(115200);
    Debug.begin(wifi::hostname);
    Serial.println("---------setup-------------");
    debugA("---------setup-------------");


    Wire.begin(i2c::sda_pin, i2c::scl_pin);

    pixels_.begin();

    ota::initialize();

    WiFi.hostname(wifi::hostname);
    WiFi.begin(wifi::ssid, wifi::password);
    wait_for_initialization([]() { return not WiFi.status() == WL_CONNECTED; }, 0, 0, 0, 255);
    Serial.println("wifi connected");
    debugA("wifi connected");

    wait_for_initialization([]() { return not apds_.begin(apds9301::address) == APDS9301::status::SUCCESS; }, 0, 0, 255, 0);
    Serial.println("apds9301 connected");
    debugA("apds9301 connected");

    wait_for_initialization([]() { return not bme_.begin(); }, 0, 255, 0, 0);
    Serial.println("bme_ connected");
    debugA("bme_ connected");

    wait_for_initialization([]() { return not mqtt_.connect(mqtt::client_id); }, 0, 255, 0, 0);
    Serial.println("mqtt_ connected");
    debugA("mqtt_ connected");

    mqtt_.setCallback([](char * topic, byte * payload, unsigned int length) { handle_topic[topic](payload, length);});

    mqtt::subscribe(mqtt_, handle_topic);

    Serial.println("---------setup finished-------------");
    debugA("---------setup finished-------------");
}

boolean reconnect()
{

    if (mqtt_.connect(mqtt::client_id))
    {
        mqtt::subscribe(mqtt_, handle_topic);
    }
    return mqtt_.connected();
}

void loop()
{
    ota::handle();

    if(WiFi.status() == WL_CONNECTED)
    {
        //Serial.println("wifi connected");
        if (!mqtt_.connected())
        {
            reconnect_attempts++;
            Serial.println("mqtt disconnected");
            debugA("mqtt disconnected");
            display::turn_on_led(pixels_, 0, 255, 0, 0);
            long now = millis();
            if (now - lastReconnectAttemptMqtt > 5000) {
                lastReconnectAttemptMqtt = now;
                // Attempt to reconnect
                Serial.println("mqtt reconnecting ...");
                debugA("mqtt reconnecting ...");
                if (reconnect())
                {
                    Serial.println("mqtt reconnect success");
                    debugA("mqtt reconnect success");
                    lastReconnectAttemptMqtt = 0;
                }
                else
                {
                    Serial.println("mqtt reconnect failed");
                    debugA("mqtt reconnect failed");
                }
            }
        }
        else
        {
            reconnect_attempts = 0;
            mqtt_.loop();
        }
   }
   else
   {
        Serial.println("wifi disconnected");
        debugA("wifi disconnected");
        reconnect_attempts++;
        display::turn_on_led(pixels_, 0, 0, 255, 0);
        long now = millis();
        if (now - lastReconnectAttemptWifi > 5000)
        {
            lastReconnectAttemptWifi = now;
            Serial.println("wifi reconnecting ...");
            debugA("wifi reconnecting ...");
            if (WiFi.reconnect())
            {
                reconnect_attempts = 0;
                Serial.println("wifi reconnect success");
                debugA("wifi reconnect success");
                lastReconnectAttemptWifi = 0;
            }
            else
            {
                Serial.println("wifi reconnect failed");
                debugA("wifi reconnect failed");
            }
       }
   }

   if(reconnect_attempts > 10)
   {
       Serial.println("Restarting !!!!!");
       debugA("Restarting !!!!!");
       ESP.restart();
   }

   Debug.handle();
}
