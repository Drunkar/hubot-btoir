# Hubot BTOIR

Bot interface for BitTradeOne USB infrared remotecontroller kit.
http://bit-trade-one.co.jp/BTOpicture/Products/005-RS/

## Dependencies

* https://github.com/kjmkznr/bto_ir_cmd

```
sudo apt-get install libusb-1.0-0 libusb-1.0-0-dev libusb-dev
```

### setup for alpine linux

```
apk update
apk add libusb-dev
cd /opt/
git clone https://github.com/kjmkznr/bto_ir_cmd.git
cd bto_ir_cmd
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
```