# Hubot BTOIR

Bot interface for BitTradeOne USB infrared remotecontroller ADVANCE kit.
http://bit-trade-one.co.jp/product/module/adir01p/

## Dependencies

* https://github.com/Drunkar/bto_ir_advanced_cmd

```
sudo apt-get install libusb-1.0-0 libusb-1.0-0-dev libusb-dev
```

### setup for alpine linux

```
apk update
apk add libusb-dev
cd /opt/
https://github.com/Drunkar/bto_ir_advanced_cmd.git
cd bto_ir_advanced_cmd
make
```

## Usage

* ``docker run`` with ``--privileged`` option.

```
hubot aircon|エアコン off: send aircon_off code in ir_codes.json.
hubot aircon|エアコン on: send aircon_on code in ir_codes.json.
hubot light|電気 off: send light_off code in ir_codes.json.
hubot light|電気 on: send light_on code in ir_codes.json.
hubot light|電気 night: send light_night code in ir_codes.json.
hubot tv|テレビ: tv power toggle.
```