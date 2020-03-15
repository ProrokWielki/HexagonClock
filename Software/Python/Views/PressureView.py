from graphic_lib.View.View import View
from graphic_lib.widgets import TextBox

from graphic_lib.Display import Color

import sys
sys.path.append("..")
import time

from SevenSegmentFont.SevenSegmentFont import SevenSegmentFont


class PressureView(View):

    def set_up(self):
        self.pressure = TextBox([21, 22, 21, 22, 21], f"{int(self.model.pressure)}",
                                SevenSegmentFont, self.model.color, TextBox.ALLIGMENT.CENTER)

        self.add(0, 0, self.pressure, "pressure")

    def update(self):
        self.pressure.set_text(f"{int(self.model.pressure)}")
        self.pressure.color = self.model.color
