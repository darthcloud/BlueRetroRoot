# BlueRetroRoot
Root repository to sync esp-idf and BlueRetro version

See [BlueRetro repo](https://github.com/darthcloud/BlueRetro) for main projet infomation.

## Dev env setup
Instruction provided for **Ubuntu-20.04**.
Make sure to install [esp-idf prerequisites](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-setup.html).
```bash
cd ~
git clone https://github.com/darthcloud/BlueRetroRoot.git
cd ~/BlueRetroRoot/
git submodule update --init --recursive
cd esp-idf
export IDF_TOOLS_PATH=$HOME/BlueRetroRoot/
./install.sh
```

## Building
Instruction provided for **Ubuntu-20.04**.
```bash
cd ~/BlueRetroRoot/
. blueretro_dev.sh
cd BlueRetro
# Replace configs/hw1/universal by any other config you may wish
cp configs/hw1/universal sdkconfig
idf.py build
idf.py -p /dev/ttyUSB0 flash
idf.py -p /dev/ttyUSB0 monitor
```

## Dump spiffs
```bash
esptool.py --chip esp32 read_flash 0x310000 0xF0000 spiffs.bin
mkspiffs.exe -u spiffs_unpack -b 4096 -p 256 -s 0xF0000 .\spiffs.bin
```

## QEMU
```bash
qemu/bin/qemu-system-xtensa -nographic -machine esp32 -drive file=node0/build/flash_image.bin,if=mtd,format=raw -serial tcp::5555,server,nowait
```
