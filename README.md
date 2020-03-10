# Dockerized swagger-merger npm package [![Docker Build Status](https://img.shields.io/docker/build/courtapi/swagger-merger.svg)](https://hub.docker.com/r/courtapi/swagger-merger/)

Merges multiple Swagger YAML files into a single YAML file.

https://github.com/WindomZ/swagger-merger

## Usage

Generate JSON:
```
docker run \
 -v `pwd`:/swagger -w /swagger \
  courtapi/swagger-merger -i CONF.yaml -o DEST.json
```

Generate YAML:
```
docker run \
 -v `pwd`:/swagger -w /swagger \
  courtapi/swagger-merger -i CONF.yaml -o DEST.yaml
```

Example
```
$ ls
conf.yaml paths.yaml

$ cat conf.yaml
swagger: '2.0'
info:
  title: My App
  version: 0.0.0
paths:
  $ref: ./paths.yaml

$ docker run \
 -v $PWD:/swagger -w /swagger \
  courtapi/swagger-merger -i conf.yaml -o combined-swagger.json

# combined-swagger.json now contains all entries from referenced files
```

