# Introduction

A simple demo to show how to  configure a docker compose deployment of [Haystack](https://github.com/deepset-ai/haystack) that uses [Weaviate](https://github.com/semi-technologies/weaviate) as the document store.

# Prerequisites

1. VS Code
2. Docker

# Usage

1. Run `make clone-haystack` in a terminal (you can update the version of haystack you want to clone in the [makefile](./makefile))

2. Use the command palette to bring up [docker-compose.yaml](./docker-compose.yml)

3. Run `make upload-data` to upload the documents in the [data](./data) folder

Notes:

* Have a look at the [api.http](./api.http) for some examples on how to interact with the solution
* Check out this [blog post](https://medium.com/@_init_/a-beginners-guide-to-configuring-haystack-to-work-with-weaviate-6f90dc903175) for more details about the configuration 

