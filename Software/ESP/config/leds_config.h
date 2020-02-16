#ifndef CONFIG_LEDS_CONFIG_H_
#define CONFIG_LEDS_CONFIG_H_

namespace leds
{

constexpr auto number_of_hexagons = 107;
constexpr auto number_of_leds_per_haxagon = 6;

constexpr auto number_of_leds = number_of_hexagons * number_of_leds_per_haxagon;

constexpr auto controll_pin = 4;

}  // namespace config::leds

#endif /* CONFIG_LEDS_CONFIG_H_ */
