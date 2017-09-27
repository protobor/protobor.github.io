---

layout: post
title: Fritzing modules pinouts
description: View signals of fritzing pc
image: assets/images/pic01.jpg
tags: [fritzing]

---

Using electronic components is hard. You can compare components from different
manufacturers for hours and there is no really usable way to do this. Since beginning
electronic documentation distributed in datasheets which is non-interactive pages
oriented to print.

Today, with Arduino as platform and home–baked IoT projects from one side and
various cheap chinese modules from other side, documentation is even more important.
Adafruit and SparkFun trying to fill the gap, but this is a mostly for their own modules
and those guides written in english. Chinese modules usually have no documentation at all.

Take a look at Adafruit guide for the [Digital Light Sensor TSL2591](https://learn.adafruit.com/adafruit-tsl2591).
Guide is split to the pages, from information, through soldering and connect,
and finally Arduino firmware which allows you to read luminosity. Lovely!
Lady Ada did great job! Unfortunately, for the rest of the world, sensor cost about $15
on Ebay, so people will actually use other sensors such as $1 *TSL2561*.

I'll try to expand those guides for the new sensors, available from Ebay/Aliexpress
and add connection guide and a code which guide you through sensor connection,
from specs to the working prototype.

Another example is [EL-wire inverter](https://learn.adafruit.com/el-wire/using-el-wire).
I don't know why is everyone using transformer inverters with very noticeable
mosquito noise. Actually first wearable devices and LCD monitors used inverters
which have minimum noise and no transformer. Take a look at my guide: {% gist parkr/c08ee0f2726fd0e3909d %}
