# electric-imp-fdc2114
Driver code for TI's FDC 2114 chip. This chip has 4 channels that each convert capacitance to a binary value. I'm using it to develop a liquid level sensor, but you could use the chip for many other applications.

The driver includes all the data sheet registers and necessary masks, as well as a few functions to read and write from the registers. Basic use of the driver consists of:

1) creating 4 sensor objects with, minimally, a name. You should create a sensor for each channel even if you don't use it. Name unused sensors "Not configured". In the following example none of the sensors are configured yet. Normally I think you'd want to provide a sensor configuration when you instantiate the sensor.

2) creating a 'sensor package' that identifies which sensors will be attached to each channel. This is an array of sensor instances.

3) create the chip with, minimally, a name and a sensor package.

Here's an example:

local sensor_0 = Sensor("Not configured")

local sensor_1  = Sensor("Not configured")

local sensor_2  = Sensor("Not configured")

local sensor_3 = Sensor("Not configured")

local sensor_package = [sensor_0, sensor_1, sensor_2, sensor_3]

local chip = Fdc2112("myFDC", sensor_package)

The driver can also take a 'recipe' as an input. The recipe follows the format that is output by the chip's (very good and worth the $30) evaluation board software. It is a JSON file. A cut and paste of the JSON file should work as the 'recipe' variable. The eval board is great for finalizing values for your specific sensor.

The following behavior will occur when the chip is initialized:

All register values (rcount, offset, settlecount, clockdividers, drivecurrent, useInt, activeChan, sensorActivateSelect, refClkSrc, highCurrentDrv, rrSeq, deglitch, and outputGain):
  * chip defaults are used UNLESS
  * there is a recipe and then the recipe values will be written UNLESS
  * non-null values are defined in your sensor and chip definition instances and then those values will be written
  
Chip values for name, i2c, i2c speed, and i2c address are not included in the recipe file so they will adopt the parameters you set in your instances or they'll take the defaults in the device constructor.

Note that the 'load_chip' function in the Sensor object relies on a file format that differs from the JSON file provided by the eval board. The required format is not provided here. Ask me if you need it and I'll clean up some work in progress and post it.
