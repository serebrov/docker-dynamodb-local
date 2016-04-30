Docker container with [DynamoDB Local](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html).

Pull the image and run the container:

```bash
    $ docker pull serebrov/dynamodb-local:latest
    $ docker run -d serebrov/dynamodb-local
```

Default parameters are: `-port 8000 -sharedDb`.

Any DynamoDB Local parameters can be passed to docker `run`, for example, run in-memory, save the job name to variable and view logs:

```bash
    $ JOB=$(docker run -d serebrov/dynamodb-local --inMemory)
    $ docker logs $JOB
    Initializing DynamoDB Local with the following configuration:
    Port:	8000
    InMemory:	true
    DbPath:	null
    SharedDb:	false
    shouldDelayTransientStatuses:	false
    CorsParams:	*
```

The data directory can be mapped to the host filesystem to persist the data between sessions:

```bash
    docker run -d -v /host/path/to/dynamodb_local_data:/opt/dynamodb_local_data serebrov/dynamodb-local
```


To build the image locally run `sudo make` (or just `make` if your docker works [without sudo](https://docs.docker.com/engine/installation/linux/ubuntulinux/#create-a-docker-group)).
