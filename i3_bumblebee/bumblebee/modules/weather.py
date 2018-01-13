# -*- coding: UTF-8 -*-
# pylint: disable=C0111,R0903

"""Displays the temperature on the current location based on the ip

Requires the following python packages:
    * requests

Parameters:
    * weather.location: Set location (ISO 3166 country code), defaults to 'auto' for getting location from http://ipinfo.io
    * weather.unit: metric (default), kelvin, imperial
    * weather.apikey: API key from http://api.openweathermap.org
"""

import bumblebee.input
import bumblebee.output
import bumblebee.engine
import re
import json
try:
    import requests
    from requests.exceptions import RequestException
except ImportError:
    pass

class Module(bumblebee.engine.Module):
    def __init__(self, engine, config):
        super(Module, self).__init__(engine, config,
            bumblebee.output.Widget(full_text=self.output)
        )
        self._temperature = 0
        self._apikey = self.parameter("apikey", "af7bfe22287c652d032a3064ffa44088")
        self._location = self.parameter("location", "auto")
        self._city = self.parameter("location", "")
        self._unit = self.parameter("unit", "metric")
        self._valid = False
        self.interval(15)

    def _unit_suffix(self):
        if self._unit == "metric":
            return "C"
        if self._unit == "kelvin":
            return "K"
        if self._unit == "imperial":
            return "F"
        return ""

    def temperature(self):
        return u"{}°{}".format(self._temperature, self._unit_suffix())

    def city(self):
        self._city = re.sub('[_-]', ' ', self._city)
        return u"{} ".format(self._city)

    def output(self, widget):
        if not self._valid:
            return u"?"
        return self.city() + self.temperature()

    def state(self, widget):
        if self._valid:
            if "thunderstorm" in self._weather:
                return ['thunder']
            elif "drizzle" in self._weather:
                return ['rain']
            elif "rain" in self._weather:
                return ['rain']
            elif "snow" in self._weather:
                return ['snow']
            elif "sleet" in self._weather:
                return ['sleet']
            elif "clear" in self._weather:
                return ['clear']
            elif "cloud" in self._weather:
                return ['clouds']
            else:
                return []

        return []

    def update(self, widgets):
        try:
            weather_url = "http://api.openweathermap.org/data/2.5/weather?appid={}".format(self._apikey)
            weather_url = "{}&units={}".format(weather_url, self._unit)
            if self._location == "auto":
                location_url = "http://ipinfo.io/json"
                location = json.loads(requests.get(location_url).text)
                coord = location["loc"].split(",")
                self._city = location["city"]
                weather_url = "{url}&lat={lat}&lon={lon}".format(url=weather_url, lat=coord[0], lon=coord[1])
            else:
                weather_url = "{url}&q={city}".format(url=weather_url, city=self._location)
            weather = json.loads(requests.get(weather_url).text)
            self._temperature = int(weather['main']['temp'])
            self._weather = weather['weather'][0]['main'].lower()
            self._valid = True
        except RequestException:
            self._valid = False
        except Exception:
            self._valid = False

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
