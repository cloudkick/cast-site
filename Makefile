default: build

setup: hyde/requirements.txt
	pip install -r hyde/requirements.txt
	pip install pygments

build:
	rm -rf deploy
	python hyde/hyde.py -g -s . -d deploy
	mkdir deploy/other/
	cp KEYS deploy/other/KEYS

run:
	python hyde/hyde.py -w -s .

.PHONY: build
