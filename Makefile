all: build

build: 
	@docker build -t=johnwu/debian:latest .

release: build
	@docker build -t=johnwu/debian:$(shell cat VERSION) .
