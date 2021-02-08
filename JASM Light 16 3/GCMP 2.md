## General Computer Modularity Protocols v2.0.0

<br />

​	This is a set of instructions and protocols meant for modular computer systems, especially ones that run JASM. This version is much more driver-oriented. This also differs from GCMP 1 by not including devices that are essential for the operation of a computer.

<br />
<br />
<br />

### Hardware:

​	Information about all the devices on a computer system are stored in bytes 0x0100-0x01FF (256 bytes range). Each devices takes 2 bytes, which means there is a maximum of 128 devices. To stop two devices from reserving the same 2 bytes, each one will have a specific id given to it when the system is built. These 2 bytes will specify how much memory the device is requesting. Writing to these bytes will tell the device where it will be located in the memory map.

​	Once the location has been specified, the first bytes returned from the device (at that location) will tell the computer what its name (ID) is. The very first byte will determine the length of the name, and the following bytes will be the name. Any additional bytes will just be used like normal by the device. Once the name is known, a driver will be needed to tell the OS what operations it can preform.

<br />
<br />
<br />

### Software:

​	Once the OS has determined the device names and locations, it will hand off the management of operations to drivers. If the computer does not have a driver for a specific device, that device will not be usable. The OS will only talk to the drivers in "operations". There is a list of operations the OS can use to talk to these drivers, and each driver will tell the OS what operations it can preform.

<br />
<br />
<br />
<br />
<br />

### Operations:

<br />

- Get storage details
- Read data from storage
- Write data to storage

<br />

- Get IO details
- Read data from IO
- Write data to IO

<br />

- Get VRAM details
- Get GPU details
- Get display details

<br />

- Get supported calculations
- Preform calculation

<br />
<br />
<br />
<br />
<br />

Started 02/08/21
Last updated 02/08/21