---
tags: [mp2307, dc-dc, step-down]
layout: module
# scopes:
module:
  name: mini-360
  productUrl:
  class: power supply
  subclasses:
    - switched-mode
    - DC to DC
    - StepDown # switched-mode power supply, also see linear power supply
  input: dc
  baseComponent: mp2307
  media:
    pictures: ../mini-360.jpg
    datasheets:
    fritzing:
    pinout:

  params:
    electrical:
      Vin:
        copy_from: mp2307
      Fosc:
        copy_from: mp2307
      Vout: adjustable
      Imax: 2A
    mechanical:
      width: 17.272mm
      height: 11.176mm
  calculators:
    vout_resistors:
      standard_r1: 8000
      vref: 0.925
      datasheet_formula: "vout = 0.925 * (r1 + r2) / r2"
      placement_images: 1
      desoldered_images: 2
      soldered_images: 3
---


{% include modules/dc-dc.html %}

<div>
Please note, there is at least two versions of those modules, one with MP2307DN ic,
other with CXW8509 (mini-360-cxw8509.jpg).
</div>

https://mysku.ru/blog/aliexpress/47974.html
