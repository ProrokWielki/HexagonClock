from graphic_lib.View.View import View
from graphic_lib.Display.Display import Color

from graphic_lib.widgets import ColorBox


class LampView(View):
    def set_up(self):
        self.lamp = ColorBox([21, 22, 21, 22, 21], self.model.lamp_color)

        self.add(0, 0, self.lamp, "lamp")

    def update(self):
        self.lamp.color = self.model.lamp_color
