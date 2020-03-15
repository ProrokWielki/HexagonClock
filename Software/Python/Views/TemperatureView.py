# -*- coding: latin-1 -*-

from graphic_lib.View.View import View
from graphic_lib.widgets import TextBox

from graphic_lib.Display import Color

import sys
sys.path.append("..")
import time

from SevenSegmentFont.SevenSegmentFont import SevenSegmentFont


class TemperatureView(View):

    def set_up(self):
        self.temperature = TextBox([21, 22, 21, 22, 21],  f"{int(self.model.temperature)}°C", SevenSegmentFont, self.model.color, TextBox.ALLIGMENT.CENTER)

        self.add(0, 0, self.temperature, "temperature")

    def update(self):
        self.temperature.set_text(f"{int(self.model.temperature)}°C")
        self.temperature.color = self.model.color
