.PHONY: image install

IMAGE := dockbox
UID := $(shell id -u)

image:
	docker build --build-arg UID=$(UID) -t $(IMAGE) .

install: dockbox
	install -m 755 dockbox /usr/local/bin/
