.PHONY: build-base build start stop

build-base:
	docker build -f Dockerfile-base -t avd-base .
	
build: build-base
	docker build -f Dockerfile-29 -t avd29

start:
	docker run -it -rm -p 6080:6080 -p 5565:5555 -p 5564:5554 --name avd29 --device /dev/kvm avd29

stop:
	docker stop avd29
