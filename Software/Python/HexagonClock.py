from graphic_lib.Display import Display, FIRST_PIXEL_POSITION, Color

from Views import *

import numpy as np
import json


from Model import Model

import paho.mqtt.client as mqtt
import time
from threading import Thread

broker_address = "192.168.1.11"
client = mqtt.Client("P3")
client.connect(broker_address)


class Led:
    number_of_leds = 0

    def __init__(self):
        self.led_index = Led.number_of_leds
        Led.number_of_leds += 1

    def set_color(self, color):
        client.publish("set_led", f"{self.led_index} {color}")

    @staticmethod
    def show():
        client.publish("show", "")


class HexagonPixel:
    number_of_leds = 6

    def __init__(self):
        self.first_led_index = Led.number_of_leds
        self.leds = [Led() for _ in range(HexagonPixel.number_of_leds)]

    def set_color(self, color):
        client.publish("fill_leds", f"{color} {self.first_led_index} {HexagonPixel.number_of_leds}")

    @staticmethod
    def show(self):
        Led.show()

    def __getitem__(self, key):
        return self.leds[key]


class HexagonFrameBuffer():
    def __init__(self, num_of_hexagon_pixels):
        self.hexagon_pixels = [HexagonPixel()
                               for _ in range(num_of_hexagon_pixels)]

    def __getitem__(self, key):
        return self.hexagon_pixels[key]

    def clear(self):
        client.publish("clear", "")

    def show(self):
        Led.show()


def lux_to_brightness_coeficient(lux):

    max_brightenss_coeficient = 1
    min_brightness_coeficient = 0.1

    max_lux_value = 150
    min_lux_value = 1

    a = np.array([[max_lux_value, 1], [min_lux_value, 1]])
    b = np.array([max_brightenss_coeficient, min_brightness_coeficient])

    x = np.linalg.solve(a, b)

    brightness_coeficient = x[0] * lux + x[1]

    print(brightness_coeficient)

    if brightness_coeficient < min_brightness_coeficient:
        return min_brightness_coeficient
    elif brightness_coeficient > max_brightenss_coeficient:
        return max_brightenss_coeficient

    return brightness_coeficient


def str_to_color(message):
    tmp = message.strip("rgb(),").split(",")
    return Color(int(tmp[0]), int(tmp[1]), int(tmp[2]))


def subscribe(mqtt, type_mapping):
    for topic in type_mapping.keys():
        mqtt.subscribe(topic)


def str_to_bool(message):
    return message == "true"


type_mapping = {"brightness": float,
                "pressure": float,
                "humidity": float,
                "temperature": float,
                "Mode": str,
                "color": str_to_color,
                "lamp_color": str_to_color,
                "Display_brightness": float,
                "lamp_brightness": float,
                "cleared": bool,
                "set": bool,
                "showed": bool,
                "auto_brightness": str_to_bool}


def on_message(client, userdata, message):
    setattr(Model, message.topic, type_mapping[message.topic](
        str(message.payload.decode("utf-8"))))
    if message.topic == "brightness":
        Model.brightness_coeficient = lux_to_brightness_coeficient(float(str(message.payload.decode("utf-8"))))


client = mqtt.Client("P1")

client.on_message = on_message

client.connect(broker_address)
client.loop_start()

subscribe(client, type_mapping)

time.sleep(5)

client.publish("clear", "")
client.publish("show", "")

time.sleep(5)


def props(f):
    return dict((name, getattr(f, name)) for name in dir(f) if not name.startswith('__'))


def thread_function():

    while(True):
        client.publish("get_brightness", "")
        time.sleep(1)
        client.publish("get_temperature", "")
        time.sleep(1)
        client.publish("get_humidity", "")
        time.sleep(1)
        client.publish("get_pressure", "")
        time.sleep(1)
        client.publish("model_dump", str(json.dumps(Model, default=lambda o: props(o))))
        time.sleep(1)


x = Thread(target=thread_function)
x.start()

display = Display([21, 22, 21, 22, 21], FIRST_PIXEL_POSITION.TOP_RIGHT, {"Clock": ClockView, "Lamp": LampView,
                                                                         "Temperature": TemperatureView, "Humidity": HumidityView, "Pressure": PressureView}, Model, HexagonFrameBuffer)
display.redraw()
time.sleep(1)

while(True):
    display.update()
    time.sleep(0.1)
