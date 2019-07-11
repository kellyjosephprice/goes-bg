install: current.jpg
	cp current.jpg ~/img/background.jpg
	feh --bg-center ~/img/background.jpg

current.jpg: download

download:
	docker build -t goes-bg .
	docker run --rm -v $(shell pwd):/var/run goes-bg ruby goes-bg
