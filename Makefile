.DEFAULT: build

build: Dockerfile
	docker build -t serebrov/dynamodb-local .
