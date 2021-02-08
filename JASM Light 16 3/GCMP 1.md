## General Computer Modularity Protocols v1.1.0

<br />

​	This is a set of instructions and protocols meant for modular computer systems, especially ones that run JASM.

<br />
<br />
<br />

​	Information about all the peripherals on a computer system are stored in bytes 0x0100-0x01FF (256 bytes range). Each peripheral takes 2 bytes, which means there is a maximum of 128 peripherals. To stop two peripherals from reserving the same 2 bytes, each one will have a specific id given to it when the system is built. Writing to these bytes will tell the peripheral where it will be located in the memory map. The first byte returned from the peripheral (once the location has been specified) will tell the computer what type of peripheral it is, as determined by the peripheral types table. Additional bytes will specify other things required by the computer, and the amount of additional data is determined by the peripheral's type. Most of the additional data will be read only, but it could also be writable, depending on the peripheral. It is also possible (and usually required for GPUs) to appear to the system as multiple peripherals (such as a GPU and VRAM).

<br />
<br />
<br />
<br />
<br />

Peripheral types table:

- 0: null; does not exist (0 additional bytes of data)
- 1: RAM  (6 additional bytes of data)
- 2: ROM  (6 additional bytes of data)
- 3: VRAM  (6 additional bytes of data)
- 4: GPU  (13 additional bytes of data)
- 5: IO controller  (2 additional bytes of data)
- 6: Calculator  (10 additional bytes of data)

<br />
<br />
<br />
<br />
<br />

Peripheral types' additional data: (all numbers start with 1 only because byte 0 specifies the peripheral type)

<br />
<br />

null:

- no additional data

<br />
<br />

RAM:

- 1: Size (low byte)
- 2: Size (high byte)
- 3: Location (low byte)
- 4: Location (high byte)
- 5: Highest read latency (in ticks; int)
- 6: Highest write latency (in ticks; int)

<br />
<br />

ROM:

- 1: Size (low byte)
- 2: Size (high byte)
- 3: Location (low byte)
- 4: Location (high byte)
- 5: Highest read latency (in ticks; int)
- 6: Highest write latency (in ticks; int)

<br />
<br />

VRAM:

- 1: Size (low byte)
- 2: Size (high byte)
- 3: Location (low byte)
- 4: Location (high byte)
- 5: Highest read latency (in ticks; int)
- 6: Highest write latency (in ticks; int)

<br />
<br />

GPU:

- 1: GPU type
- 2: Supported modes (when reading)
- - bit 0: B/W bitmap mode supported
- - bit 1: color bitmap mode supported
- - bit 2: B/W character mode supported
- - bit 3: color character mode supported
- 2: Set mode (when writing)
- - 1: B/W bitmap mode
- - 2: color bitmap mode
- - 3: B/W character mode
- - 4: color character mode
- 3: Blanking data (when reading)
- - bit 0: F-Blanking
- - bit 1: H-Blanking
- - bit 2: V-Blanking
- 3: Blanking data (when writing)
- - bit 0: F-Blank
- 4-5: Screen width (2 bytes)
- 6-7: Screen height (2 bytes)
- 8: H-Blanking virtual width (duration)
- 9: V-Blanking virtual height (duration)
- 10-11: H-Resolution (bitmap mode)
- 12-13: V-Resolution (bitmap mode)
- 10: Char width (char mode)
- 11: #Chars horizontally (char mode)
- 12: Char height (char mode)
- 13: #Chars vertically (char mode)

<br />
<br />

IO controller:

- 1: Input type (when reading)
- - 0: null (not connected)
- - 1: system controls (power button, etc)
- - 2: keyboard (ascii encoding)
- - 3: mouse
- 1: Update IO (when writing)
- - 0: null (unknown command)
- - 1: update
- 2: Input (when reading)
- 2: Output (when writing)



Calculator:

- 1: Supported calculations
- - bit 0: can do multiplication?
- - bit 1: can do division?
- - bit 2: can do square?
- - bit 3: can do A^B?
- - bit 4: can do sqrt?
- - bit 5: can do bin <-> BCD?
- 2: In1 (writable)
- 3: In2 (writable)
- 4: Out
- 5: Start calculation (writable)
- - 1: multiplication
- - 2: division
- - 3: square
- - 4: A^B
- - 5: sqrt
- - 6: bin -> BCD
- - 7: BCD -> bin
- 6...: Clac IO (This is used for things like bin <-> BDC) (?)
- 6:  Highest multiplication latency (in ticks; int)
- 7:  Highest division latency (in ticks; int)
- 8:  Highest square latency (in ticks; int)
- 9:  Highest A^B latency (in ticks; int)
- 10: Highest sqrt latency (in ticks; int)

<br />
<br />
<br />
<br />
<br />

Started 08/29/20
Last updated 02/03/21