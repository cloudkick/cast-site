


setup: hyde/requirements.txt
	pip install -r hyde/requirements.txt

build:
	python hyde/hyde.py -g -s . -d deploy

run:
	python hyde/hyde.py -w -s .

