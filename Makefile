.PHONY: all build lint run

all: build lint

run:
	python -m SimpleHTTPServer

watch:
	watch make build

build:
	mkdir -p dist
	./node_modules/.bin/browserify src/js/main.js > dist/main.js

lint:
	./node_modules/.bin/jshint src/js
