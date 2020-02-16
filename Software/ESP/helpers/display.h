#ifndef DISPLAY_H_
#define DISPLAY_H_

#include <Adafruit_NeoPixel.h>

namespace display
{

void clear(Adafruit_NeoPixel & pixels)
{
    pixels.clear();
    pixels.show();
}

void turn_on_led(Adafruit_NeoPixel & pixels, uint16_t led_index, uint8_t red, uint8_t green, uint8_t blue)
{
    pixels.setPixelColor(led_index, red, green, blue);
    pixels.show();
}

}  // namespace display

#endif /* DISPLAY_H_ */
