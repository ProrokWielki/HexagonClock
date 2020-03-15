from dataclasses import dataclass

from graphic_lib.Display import Color


class Model:
    temperature = 0
    humidity = 0
    pressure = 0
    brightness = 0
    Mode = "Clock"
    Display_brightness = 1
    auto_brightness = False
    brightness_coeficient = 1
    color = Color(51, 255, 0)
    lamp_color = Color(255, 255, 255)
