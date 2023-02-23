dev:
	docker rm -f fs-dev | true
	docker build --platform linux/amd64 -t fs-dev .
	docker run -d --entrypoint "" --name fs-dev --platform linux/amd64 -v `pwd`:/opt/unleash -w /opt/unleash -it fs-dev /sbin/init
	docker exec -it fs-dev /bin/bash
