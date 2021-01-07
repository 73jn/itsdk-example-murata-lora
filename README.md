# LoRaWan example for MURATA CMWX1ZZABZ using ItSdk

The hardware configuration has been set with CubeMX and the project has been created for CubeIDE.

## Status
** Ready for use **

## Dependencies
* This example requires [ST CubeIDE](https://www.st.com/en/development-tools/stm32cubeide.html) the ST-Microelectronic free IDE based on Eclipse + GCC

## Installation
1. If you never start CubeIDE, do it to get your project's workspace created. Then open a terminal and go to this directory.
2. Clone this repository
	```sh
	[Workspace_CubeMx]# git clone https://github.com/73jn/itsdk-example-murata-lora.git
	```
3. Enter this repository
	```sh
	[Workspace_CubeMx]# cd itsdk-example-murata-lora
	```
4. Clone the ItSDK repository
	```sh
	[itsdk-example-sigfox-sx1276]# git clone https://github.com/73jn/stm32-it-sdk.git
	[itsdk-example-sigfox-sx1276]# git checkout devUart
	``` 
5. In CubeIDE go to File >> Import >> Existing Projects into Workspace. Select the _itsdk-example-murata-lora_ directory and import the project.
6. Build the project in Release mode
7. You get a _itsdk-example-murata-lora.bin_ in the _Release_ folder
8. Connect the LRWAN ST board with USB
9. Open a serial tty on the _STM32 STLink_ USB Serial port with 9600bps configuration 
10. Copy the _itsdk-example-murata-lora.bin_ file on the automatically mounted drive (named *DIS_L072Z*)
11. The board programming led is blinking, then the program is running.

On the console, at this step you should see:
```
[INFO] S 0x10001001

- 
```

## General Usage

* A console for debug is accessible on USART2 @ 9600

## License

This code and ItSdk are under GPLv3. You can use it freely, you can modify, redistribute but *you must* to publish your source code. Other licenses can be obtained by contacting me on [disk91.com](https://www.disk91.com)
