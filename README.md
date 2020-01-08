# Android Emulator in Docker to use with instrumented tests

ADB ports: 5565, 5564. Autodiscovered by adb, no setup needed.
VNC/http port: 6080, open with browser. Warning: no auth! Do not expose unintentionally.

## Requirements:

* Docker
* /dev/kvm available and VM-t enabled in bios
* make

## Usage:

`make build` to build

`make start` to start daemonized (check emulator running ith `adb devices`). 

`make stop` to stop
