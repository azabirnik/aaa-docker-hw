VERSION=$(shell cat version)

IMAGE=azabirnik/server:${VERSION}

download:
	git clone https://github.com/AndreyErmilov/aaa-docker-hw.git

build:
	docker build -t ${IMAGE} .

upload:
	docker push ${IMAGE}

up:
	docker-compose up -d
