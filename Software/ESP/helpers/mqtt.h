#ifndef MQTT_H_
#define MQTT_H_

#include <PubSubClient.h>

namespace mqtt
{

void subscribe(PubSubClient & mqtt, const std::initializer_list<const char *> & topics_to_subscribe)
{
    for (const auto & topic : topics_to_subscribe)
    {
        mqtt.subscribe(topic);
    }
}

}  // namespace mqtt

#endif /* MQTT_H_ */
