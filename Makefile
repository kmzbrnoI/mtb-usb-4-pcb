all: fab

clean:
	rm -r fab

fab: mtb-usb-4-ele.kicad_pcb
	kikit fab jlcpcb --assembly --schematic mtb-usb-4-ele.sch mtb-usb-4-ele.kicad_pcb fab

.PHONY: all clean
