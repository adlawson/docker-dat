.PHONY: build tag

all: build tag

build:
	@docker build -t dat .

tag:
	@docker tag dat adlawson/dat
