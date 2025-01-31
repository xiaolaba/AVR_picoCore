## this is fork of https://github.com/nerdralph/picoCore


### how to update and follow the original author,
download picoCore-0.3.5.zip  
  
installed path,   
```
%userprofile%\AppData\Local\Arduino15\packages\picoCore\hardware\avr\0.3.5
```

picoCore-0.3.5.zip, file structure, root folfer must be picoCore-0.3.5,  
```
picoCore-0.3.5\cores\  
picoCore-0.3.5\libraries\  
picoCore-0.3.5\boards.txt  
picoCore-0.3.5\LICENSE  
picoCore-0.3.5\platform.txt  
picoCore-0.3.5\programmers.txt  
picoCore-0.3.5\README.md  
```

https://emn178.github.io/online-tools/sha256_checksum.html, upload and see SHA hash 

or uses Win10 buil-in tool to see sha256  
[/win10_sha256_tool](/win10_sha256_tool)  

edit https://github.com/xiaolaba/xiaolaba.github.io/tree/master/json/package_xiaolaba_picoCore_index.json to include this new version,     

edit https://github.com/xiaolaba/xiaolaba.github.io/blob/master/index.html, it will update and push automativally,   

try and see effective, https://xiaolaba.github.io/json/package_xiaolaba_picoCore_index.json   

include this path, https://xiaolaba.github.io/json/package_xiaolaba_picoCore_index.json to Arduino IDE broad manager, for auto update  


### trying to json of github and easy & auto installation.  
testing, 2020-05-19, done

open Arduino 1.8.12 IDE,  (later version should works well) 
File / Preference / Additional Broad manager URLs,  
include the json following,  

https://xiaolaba.github.io/json/package_xiaolaba_picoCore_index.json  

Tools / Broad Managers / update and install

-----------------------------------------  
    
### manual installation,  

clone ![picoCore.zip](picoCore.zip), unzip and move the whole folder to the path as, 

C:\Users\ YOUR_USER_NAME \AppData\Local\Arduino15\packages\  
```
%userprofile%\AppData\Local\Arduino15\packages  
```




-----------------------------------------




# picoCore
Small Arduino/Wiring core for 8-pin tiny AVRs: ATtiny13 and ATtiny25-85 series.  Arduino Blink sketch compiled for the ATtiny85 is 64 bytes and for the ATtiny13 is 54 bytes.

I am writing this core from scratch, with code size and efficiency as the main goal.  I am making use of AVR assembler code when the code size and efficiency goals cannot be readily attained with C/C++.  Unlike the official AVR core, picoCore has compile-time checking of many arguments.  Calling digitalWrite(42) will cause a compile error with the message, "pin out of range". 


## Development Status
Work in progress as of spring 2020.

Several of the most commonly used functions are implemented as of v0.2. Support for Serial.print is planned for v0.3.

## Supported Functions
* [analogRead()](https://www.arduino.cc/en/Reference/AnalogRead)
* [analogWrite()](https://www.arduino.cc/en/Reference/AnalogWrite)
* [delay()](https://www.arduino.cc/en/Reference/Delay)
* [delayMicroseconds()](https://www.arduino.cc/en/Reference/DelayMicroseconds)   *wrapper for _delay_us()*
* [digitalRead()](https://www.arduino.cc/en/Reference/DigitalRead)
* [digitalWrite()](https://www.arduino.cc/en/Reference/DigitalWrite)
* [millis()](https://www.arduino.cc/en/Reference/Millis)   *Watchdog timer based. Will increase with steps of 16*
* [shiftIn()](https://www.arduino.cc/en/Reference/ShiftIn)
* [shiftOut()](https://www.arduino.cc/en/Reference/ShiftOut)

