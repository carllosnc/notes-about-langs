# Swift

Running with a docker container:
```shell
docker run -dit --volume .:/app --name learn-swift swift swift /app/app.swift
```

Another way
```shell
docker run -dit --volume .:/app --name learn-swift swift
docker exec learn-swift swift /app/app.swift
```
