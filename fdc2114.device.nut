class Fdc2112 {
    
    static class_name = "Fdc2112"
    
    static _registers = {
        data_ch0 = {location = "\x00", mask = 0x3fff} //in json schema
        data_ch1 = {location = "\x02", mask = 0x3fff} //in json schema
        data_ch2 = {location = "\x04", mask = 0x3fff} //in json schema
        data_ch3 = {location = "\x06", mask = 0x3fff} //in json schema
        rcount_ch0 = {location = "\x08", mask = 0xffff} //in json schema
        rcount_ch1 = {location = "\x09", mask = 0xffff} //in json schema
        rcount_ch2 = {location = "\x0a", mask = 0xffff} //in json schema
        rcount_ch3 = {location = "\x0b", mask = 0xffff} //in json schema
        offset_ch0 = {location = "\x0c", mask = 0xffff} //in json schema
        offset_ch1 = {location = "\x0d", mask = 0xffff} //in json schema
        offset_ch2 = {location = "\x0e", mask = 0xffff} //in json schema
        offset_ch3 = {location = "\x0f", mask = 0xffff} //in json schema
        settlecount_ch0 = {location = "\x10", mask = 0xffff} //in json schema
        settlecount_ch1 = {location = "\x11", mask = 0xffff} //in json schema
        settlecount_ch2 = {location = "\x12", mask = 0xffff} //in json schema
        settlecount_ch3 = {location = "\x13", mask = 0xffff} //in json schema
        clock_dividers_ch0 = {location = "\x14", mask = 0x33ff} //in json schema
        clock_dividers_ch1 = {location = "\x15", mask = 0x33ff} //in json schema
        clock_dividers_ch2 = {location = "\x16", mask = 0x33ff} //in json schema
        clock_dividers_ch3 = {location = "\x17", mask = 0x33ff} //in json schema
        status = {location = "\x18", mask = 0xce4f} //in json schema
        error_config = {location = "\x19", mask = 0x3821} //in json schema
        config = {location = "\x1a", mask = 0xeac0} //in json schema
        mux_config = {location = "\x1b", mask = 0xe007} //in json schema
        reset_dev = {location = "\x1c", mask = 0x8600} //in json schema        
        drive_current_ch0 = {location = "\x1e", mask = 0xf800} //in json schema
        drive_current_ch1 = {location = "\x1f", mask = 0xf800} //in json schema
        drive_current_ch2 = {location = "\x20", mask = 0xf800} //in json schema
        drive_current_ch3 = {location = "\x21", mask = 0xf800} //in json schema
        manufacturer_id = {location = "\x7e", mask = 0xffff} //in json schema
        device_id = {location = "\x7f", mask = 0xffff} //in json schema
        data0 = {location = "\x00", mask = 0x0fff}
        data1 = {location = "\x02", mask = 0x0fff}
        data2 = {location = "\x04", mask = 0x0fff}
        data3 = {location = "\x06", mask = 0x0fff}
        fin_sel_ch0 = {location = "\x14", mask = 0x3000}
        fin_sel_ch1 = {location = "\x15", mask = 0x3000}
        fin_sel_ch2 = {location = "\x16", mask = 0x3000}
        fin_sel_ch3 = {location = "\x17", mask = 0x3000}
        fref_divider_ch0 = {location = "\x14", mask = 0x03ff}
        fref_divider_ch1 = {location = "\x15", mask = 0x03ff}
        fref_divider_ch2 = {location = "\x16", mask = 0x03ff}
        fref_divider_ch3 = {location = "\x17", mask = 0x03ff}
        wd_err2out = {location = "\x19", mask = 0x2000}
        ah_warn2out = {location = "\x19", mask = 0x1000}
        al_warn2out = {location = "\x19", mask = 0x0800}
        wd_err2int = {location = "\x19", mask = 0x0020}
        drdy_2int = {location = "\x19", mask = 0x0001}
        active_chan  = {location = "\x1a", mask = 0xc000}
        sleep_mode_en = {location = "\x1a", mask = 0x2000}
        sensor_activate_sel = {location = "\x1a", mask = 0x0800}
        ref_clk_src = {location = "\x1a", mask = 0x0200}
        intb_dis = {location = "\x1a", mask = 0x0080}
        high_current_drv = {location = "\x1a", mask = 0x0040}
        autoscale_en = {location = "\x1b", mask = 0x8000}
        rr_sequence = {location = "\x1b", mask = 0x6000}
        deglitch = {location = "\x1b", mask = 0x0007}
        reset_dev_dr = {location = "\x1c", mask = 0x8000}
        output_gain = {location = "\x1c", mask = 0x0600}
        err_wd_ch0 = {location = "\x00", mask = 0x2000}        
        err_wd_ch1 = {location = "\x02", mask = 0x2000}        
        err_wd_ch2 = {location = "\x04", mask = 0x2000}        
        err_wd_ch3 = {location = "\x06", mask = 0x2000}
        err_aw_ch0 = {location = "\x00", mask = 0x1000}        
        err_aw_ch1 = {location = "\x02", mask = 0x1000}        
        err_aw_ch2 = {location = "\x04", mask = 0x1000}        
        err_aw_ch3 = {location = "\x06", mask = 0x1000}
        err_chan = {location = "\x18", mask = 0xc000}
        err_wd = {location = "\x18", mask = 0x0800}
        err_ahw = {location = "\x18", mask = 0x0400}
        err_alw = {location = "\x18", mask = 0x0200}
        drdy = {location = "\x18", mask = 0x0040}
        unread_ch0 = {location = "\x18", mask = 0x0008}
        unread_ch1 = {location = "\x18", mask = 0x0004}
        unread_ch2 = {location = "\x18", mask = 0x0002}
        unread_ch3 = {location = "\x18", mask = 0x0001}
        }

    _name=null
    _recipe = null
    _sensors = array(4)

// the following assignments will be used as the defaults unless the user overrides with specific values in the constructor
    _i2c = hardware.i2c12
    _i2cSpeed = CLOCK_SPEED_400_KHZ
    _addr = 0x54
    _chip_prop = {
        intb_dis = null
        active_chan = null
        sensor_activate_sel = null
        ref_clk_src = null
        high_current_drv = null
        rr_sequence = null
        deglitch = null
        output_gain = null
    }

    constructor(name, sensor_package, recipe=null, i2c=null, i2cSpeed=null, addr=null, useInt=null, activeChan = null, sensorActivateSelect = null, refClkSrc = null, highCurrentDrv = null, rrSeq = null, deglitch = null, outputGain = null) 
    //          1     2               3            4         5              6          7            8                  9                            10                11                     12            13               14
    {
        _name = name
        _sensors = sensor_package
        _i2c = (i2c != null) ? i2c : _i2c
        _i2cSpeed = (i2cSpeed != null) ? i2cSpeed : _i2cSpeed
        _addr = (addr != null) ? addr : _addr
        _recipe = recipe
        _chip_prop = {
            intb_dis = useInt
            active_chan = activeChan
            sensor_activate_sel = sensorActivateSelect
            ref_clk_src = refClkSrc
            high_current_drv = highCurrentDrv
            rr_sequence = rrSeq
            deglitch = deglitch
            output_gain = outputGain
        }
        
        foreach (idx, sensor in _sensors) {
            sensor._channel = idx
            sensor._chip = this
        }
        initialize()
    }
    
    function reset () { //returns true or false, resets the chip to default values
        return i2cWrite(_registers.reset_dev_dr.location + "\x80\x00")
    }

    function initialize() {
        _i2c.configure(_i2cSpeed)
        reset()
        if (_recipe != null) {
            server.log("Building chip from recipe.")
            local ingredients = buildJSONTable(_recipe)
            foreach (item, value in ingredients) {
                if (!(item in _registers)) {
                    server.error(item + " not found in chip registers.")
                }
                else {
                    set_value(item, value)
                }
            }
        }
        
        //if the values get here as 'null,' then we won't write them and they'll end up as chip defaults
        foreach (item, value in _chip_prop) {
            if (value != null) {set_value(item, value)}
        }
        foreach (sensor in _sensors) {
            foreach (item, value in sensor._chip_prop) {
                if (value == null) {continue}
                set_value(item + format("_ch%1s", sensor._channel.tostring()), value)
            }
        }
        return
    }

    function get_value(value_slot, returnType = 0) { //value_slot is a string that matches one of the entries in the _registers table. Returns an int if returnType = 0, a string if returnType = 1
        if (!returnType) {
            local mask = _registers[value_slot]["mask"]
            local v = i2cRead(_registers[value_slot]["location"], 2)
            return (((v[0] & (mask >> 8)) << 8) + (v[1] & mask)) >> rightZeroes(mask)
        }
        else if (returnType == 1) {
            return i2cRead(_registers[value_slot]["location"], 2)
        }
        else {
            server.error("Invalid return type.")
            return false
        }
    }
    
    function set_value(value_slot, setVal) { //value_slot is a string that matches one of the entries in the _registers table. setVal can be an int or a 2-char string. Returns 0 on success, an error code if not.
        local writeStr
        local regAddr = _registers[value_slot]["location"]
        local reply
        local initRegArr = get_value(value_slot, 1)
        local mask = _registers[value_slot]["mask"], reply
        try  {if (setVal.len() == 2) {
                writeStr = regAddr + format("%c%c" setVal[0], setVal[1])
            }
            else {
                server.log("Tried to write a register with too many or too few strings.")
                return false
                }        
        }
        catch (error) {
            //sent as integer
            local result = array(2)
            setVal = (setVal << rightZeroes(mask)) & mask
            result[0] = (initRegArr[0] & ~(mask >> 8)) | ((setVal >> 8) & (mask >> 8))
            result[1] = ((initRegArr[1] & ~mask) | (setVal & mask) & 0x00ff)
            writeStr = regAddr + format("%c%c", result[0], result[1])
        }
        return i2cWrite(writeStr)
    }

    function read_sensor (sensorChannel) { //takes the channel number as an int. Make sure you take the chip out of sleep mode before trying to read. Returns a null if the chip is in sleep mode or if the channel does not have new data.
        if (get_value("sleep_mode_en")) {
            server.error("Chip is in sleep mode")
            return null
        }
        if(!get_value("unread_ch" + sensorChannel)) {
            server.error("Channel " + sensorChannel + " data is stale.")
            return null
        }
        return get_value(format("data_ch%s", sensorChannel.tostring()))
    }
    
    function name() {return _name} //returns the name of the chip
    
//--------------PRIVATE FUNCTIONS----------------------------    

    function charHexToArr (inputString) { //takes an input string as provided by the recipe file and turns it into a char array usable by the chip.
        local outArr = array(2), item
        try {item = format("%04s", split(inputString.toupper(), "X")[1])}
        catch (error) {server.error("Illegal value provided to charHexToArr routine.");return null;}
        outArr[0] = ((item[0] - (item[0] > 57 ? 55 : 48)) << 4) | (item[1] - (item[1] > 57 ? 55 : 48))
        outArr[1] = ((item[2] - (item[2] > 57 ? 55 : 48)) << 4) | (item[3] - (item[3] > 57 ? 55 : 48))
        return outArr
    }

    function buildJSONTable (recipe) { //takes an array in recipe format (output by the TI evaluation board) and turns it into an easier-to-use table of values.
        local valuesTable = {}
        foreach (key, item in recipe[0]) {
            valuesTable[item.id] <- charHexToArr(item.value)
        }
        return valuesTable
    }
    
    function rightZeroes(mask) { //takes a mask as an int. Function tells you how many zeroes are padding the right of a register. This is used to shift masked values back to the 0 bit for use as integers. Returns an int.
        return math.ceil((math.log10(((mask - 1) ^ mask) + 1)/math.log10(2)) - 1.5).tointeger()
    }
        
    function i2cRead(location, numBytes) { //takes a string location and an int for how many chars you want to read. Returns a 'numBytes'-char string
        local result = _i2c.read(_addr, location, numBytes)
        if (result == null) {server.error("Could not read from chip, error: " + _i2c.readerror());}
        return result
    }
    
    function i2cWrite(writeString) { //takes a string. writeString[0] = register addr, writeString[1..2] = data to write. Returns 0 if success, error code if not.
        local result = _i2c.write(_addr, writeString)
        if (result != 0) {server.error("Could not write to chip, error: " + result);}
        return result
    }
    
    function set_prop (property, value) { //takes string for 'property' (should match a chip property) and the appropriate type for value (e.g. the 'name' property takes a string)
        if (property in _chip_prop) {_chip_prop[property] = value}
        else {this["_" + property] = value}
    }

    function load_chip () { //loads values saved in the nv to the chip
        server.log("Updating now\r")
        foreach (idx, sensor in nv.sensors) {
            switch (sensor.name) {
                case "not configured":
                case "Not configured":
                    _sensors[idx]._name = "Not configured"
                    break
                default:
                    foreach (property, value in sensor) {
                server.log("Prop set area " + property + value)
                        set_prop.call(_sensors[idx], property, value)
                    }
                    set_prop.call(_sensors[idx], "channel", idx)
                    set_prop.call(_sensors[idx], "chip", this)
                    break
            }
        }
        foreach (property, value in nv) {
            if (property == "sensors") {continue}
            set_prop(property, value)
        }    
        initialize()
    }
//-----------------------END OF PRIVATE FUNCTIONS-------------------------

} //close class fdc2112

class Sensor {
    
    _name=null
    _channel = null
    _chip = null
    _chip_prop = {
        rcount = null
        offset = null
        settlecount = null
        clock_dividers = null
        drive_current = null
        fin_sel = null
        fref_divider = null
}
    
    constructor(name, rCount=null, offset=null, settlecount=null, clockdividers=null, drivecurrent=null, finsel=null, frefdiv=null) {
        _name=name
        _chip_prop = {
            rcount = rCount
            offset = offset
            settlecount = settlecount
            clock_dividers = clockdividers
            drive_current = drivecurrent
            fin_sel = finsel
            fref_divider = frefdiv
        }
    }
    
    function read() {return _chip.read_sensor(_channel)} //this function lets you do a read from a sensor object.
    
    function name() {return _name}
    
    function get_config () { //returns an array with the sensor's config
        return {
            name = _name
            channel = _channel
            chip = _chip.name()
            rcount = get_value("rcount")
            offset = get_value("offset")
            settlecount = get_value("settlecount")
            clock_dividers = get_value("clock_dividers")
            drive_current = get_value("drive_current")
            fin_sel = get_value("fin_sel")
            fref_divider = get_value("fref_divider")
        }
    }

    function get_value (variable) { //variable is a string that matches one of the sensor registers. All sensor registers end with 'chx'. Returns an int.
        if (variable in _chip_prop) {
            variable = variable + "_ch" + _channel
            return _chip.get_value(variable)
        }
        else {return this["_" + variable]}
    }
    
    function set_prop (property, value) { //sets a property on a sensor instance. Use with care, this will not write the result to the chip.
        if (property in _chip_prop) {_chip_prop[property] = value}
        else {this["_" + property] = value}
    }

} //close class for Sensor

local sensor_0 = Sensor("Initialize")
local sensor_1  = Sensor("Initialize")
local sensor_2  = Sensor("Initialize")
local sensor_3 = Sensor("Initialize")
local sensor_package = [sensor_0, sensor_1, sensor_2, sensor_3]
local chip = Fdc2112("Initialize", sensor_package)
