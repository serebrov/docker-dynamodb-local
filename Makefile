.DEFAULT: build

build: Dockerfile
	docker build -t serebrov/docker-dynamodb-local .
