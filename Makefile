
all: build

build: 
	docker build --rm=true -t catalyzeio/buildstep .
