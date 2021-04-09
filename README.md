MTB-USB v4 PCB
==============

MTB-USB is a [MTBbus](https://mtb.kmz-brno.cz/bus) to USB interface.
It connects computer to the MTBbus. It is a master module on the MTBbus.

This repository contains schematics & PCB layout of MTB-USB v4 PCB. Firmware
for main MCU STM32F103 is available
[here](https://github.com/kmzbrnoI/mtb-usb-4-fw). More information about
MTB in available [here](https://mtb.kmz-brno.cz/).

## Design

Schematics & PCB are designed in KiCad 5.

## Production

PCB is prepared to be automatically assembled in [JLCPCB](https://jlcpcb.com/).
SMD parts on **top** side should be assembled. Each SMD part has its `LCSC_ITEM`
attribute set.

```bash
$ kikit fab jlcpcb --assembly --schematic mtb-usb-4-ele.sch mtb-usb-4-ele.kicad_pcb fab
```

## Parameters

 * Galvanically separated USB & MTBbus.
 * USB-C connector.
 * USB part (with main MCU): powered directly from USB-C connector. No need
   for voltage over 5V (old USB compatibility ok).
 * MTBbus powered either from outside (7–17 V, ideally 12 V) or from USB
   via galvanically-separated DC-DC convertor.
   - GND must be connected with MTBbus' GND always!
 * MTBbus terminator on-board.
 * Two RJ12 connectors as well as screw terminals for MTBbus connection.
 * Max power consumption: 300 mA.
   - Max current through RS485 driver: 250 mA.

## Authors

MTB-USB v4 module is designed by [Model Railroaders Club
Brno](https://www.kmz-brno.cz/), [Jan Horáček](mailto:jan.horacek@kmz-brno.cz).

## License

Content of the repository is provided under [Creative Commons
Attribution-ShareAlike 4.0
License](https://creativecommons.org/licenses/by-sa/4.0/) as openhardware
project. You may download any data, contribute to the project, create PCB
yourself or even sell it yourself.
