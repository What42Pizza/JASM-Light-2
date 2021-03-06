# JDI

### JASM Data Interface is a way for components in a computer to transmit data.

<br />
<br />
<br />

​	JASM Data Interface is usually shortened to JDI with two numbers following it. The first number is the number of data bits and the second number is the number of address bits. For example, if a JDI has an 8-bit data interface and a 16-bit address interface, it would be JDI 8-16.

<br />

There are 5 main components to a JDI bus:

- /\  \/  x-bit Data bus
- /\       y-bit Address bus
- /\       1-bit Read line
- /\       1-bit Write line
- ​     \/  1-bit Not ready line

<br />

​	When two components are connected with JDI, one will be the controller and the other will be the responder. In the description above, if a line/bus has /\ next to it, it goes from the controller to the responder, and vise versa. If it has both, the data can go either way.

<br />

​	There can only be one controller hooked up to a JDI, but there can be multiple responders hooked up to the same JDI. If there are multiple responders, they need to only respond if the address being outputted to the bus is within their specified range. The reasoning for the 5th line being a not ready line instead of a ready line is that every responder on the bus has to disable their not ready line for the controller to know that every responder is ready. If it were a ready line, then managing multiple responders would be slightly harder.

<br />
<br />
<br />

When the controller wants to write data, it has to:

- 1: Wait for the not ready line to turn off
- 2: Output the address to write to
- 3: Output the data to write
- 4: Enable the write line
- 5: Wait for the not ready line to turn on
- 6: Disable the write line

<br />

When the controller wants to read data, it has to:

- 1: Wait for the not ready line to turn off
- 2: Output the address to read from
- 3: Enable the read line
- 4: Wait for the not ready line to turn on
- 6: Read the data from the data bus
- 7: Disable the read line

<br />
<br />
<br />

When a responder has a write signal, it has to:

- 1: Enable the not ready line
- 2: Process the data on the data bus using the address on the address bus
- 3: Disable the not ready line

<br />

When a responder has a read signal, it has to:

- 1: Output data to the data bus using the address on the address bus
- 2: Enable the not ready line
- 3: Wait for the read line to turn off
- 4: Stop outputting data to the data bus
- 5: Disable not ready line

<br />
<br />
<br />

Created 08/07/20
Last updated 02/03/21