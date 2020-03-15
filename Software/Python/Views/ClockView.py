from graphic_lib.View.View import View
from graphic_lib.widgets import TextBox

from graphic_lib.Display import Color

import sys
sys.path.append("..")
import time

from SevenSegmentFont.SevenSegmentFont import SevenSegmentFont


class ClockView(View):

    def set_up(self):
        self.hour = TextBox([21, 22, 21, 22, 21], f"{time.localtime().tm_hour}{ ':' if time.localtime().tm_sec % 2 else ' '}{time.localtime().tm_min:02d}",
                            SevenSegmentFont, self.model.color, TextBox.ALLIGMENT.CENTER)

        self.add(0, 0, self.hour, "hour")

    def update(self):
        self.hour.set_text(
            f"{time.localtime().tm_hour}{ ':' if time.localtime().tm_sec % 2 else ' '}{time.localtime().tm_min:02d}")
        self.hour.color = self.model.color
