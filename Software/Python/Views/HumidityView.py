from graphic_lib.View.View import View
from graphic_lib.widgets import TextBox

from graphic_lib.Display import Color

import sys
sys.path.append("..")
import time

from SevenSegmentFont.SevenSegmentFont import SevenSegmentFont


class HumidityView(View):

    def set_up(self):
        self.humidity = TextBox([21, 22, 21, 22, 21], f"{int(self.model.humidity)}",
                                SevenSegmentFont, self.model.color, TextBox.ALLIGMENT.CENTER)

        self.add(0, 0, self.humidity, "humidity")

    def update(self):
        self.humidity.set_text(f"{int(self.model.humidity)}%")
        self.humidity.color = self.model.color
