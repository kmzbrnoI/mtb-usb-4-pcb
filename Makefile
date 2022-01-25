all: fab

clean:
	rm -r fab

fab: mtb-usb-4-ele.kicad_pcb
	kikit fab jlcpcb --no-drc --assembly --schematic mtb-usb-4-ele.kicad_sch mtb-usb-4-ele.kicad_pcb fab

.PHONY: all clean
