---
tags: [mp2307, dc-dc, step-down]
layout: module
# scopes:
module:
  name: mini-360
  image: ../mini-360.jpg
  productUrl:
  class: power supply
  subclasses:
    - switched-mode
    - DC to DC
    - StepDown # switched-mode power supply, also see linear power supply
  input: dc
  pinout:
  fritzing:
  electrical:
    Vin: [5V, 24V]
    Vout: adjustable
    Imax: 2A
  mechanical:
    width: 17.272mm
    height: 11.176mm
  datasheets:
    mp2307: mp2307.pdf

---


{% include modules/dc-dc.html %}

<div>
Please note, there is at least two versions of those modules, one with MP2307DN ic,
other with CXW8509 (mini-360-cxw8509.jpg).
</div>

https://mysku.ru/blog/aliexpress/47974.html
