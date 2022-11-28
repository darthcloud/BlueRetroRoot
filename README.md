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
