
chip.bin: chip.asc
	icepack chip.asc chip.bin

chip.asc: chip.json upduino_v2.pcf
	nextpnr-ice40 --up5k --package sg48 --json chip.json --pcf upduino_v2.pcf --asc chip.asc   # run place and route

chip.json: chip.v blink.v
	yosys -q -p "synth_ice40 -json chip.json" chip.v blink.v

.PHONY: flash
flash:
	iceprog chip.bin

.PHONY: clean
clean:
	$(RM) -f chip.json chip.asc chip.bin
