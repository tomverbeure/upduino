
# Blink

This 'Hello World' equivalent simply blinks the RGB LED. They're high intensity LEDs that will almost
burn your eyeballs if you stare at it long enough.

*Check out the code in [this issue](https://github.com/tomverbeure/upduino/issues/3). It shows how you
can reduce the current of the LED drivers.*

# Requirements

* Project IceStorm

    Install this first.

* Yosys

    Synthesis tool.

* nextpnr

    Place & Route tool

# Usage

* ```make```

    Builds ```chip.bin``` bitstream

* ```sudo make flash```

    Program the bitstream to the device.

Expected output during flashing:

```
ubuntu@ubuntu-xenial:~/projects/upduino$ sudo make flash
iceprog chip.bin
init..
cdone: high
reset..
cdone: high
flash ID: 0xEF 0x40 0x16 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
file size: 104090
erase 64kB sector at 0x000000..
erase 64kB sector at 0x010000..
programming..
reading..
VERIFY OK
cdone: high
Bye.
```

