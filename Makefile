DOCKER_REGISTRY ?= jozuenoon
IMAGE := webdav

GIT_BRANCH := $(shell git branch | sed -n '/\* /s///p' 2>/dev/null)
GIT_COMMIT := $(shell git rev-parse HEAD 2>/dev/null)

build:
	docker build -f Dockerfile -t $(DOCKER_REGISTRY)/$(IMAGE):$(GIT_BRANCH)_$(GIT_COMMIT) -t $(DOCKER_REGISTRY)/$(IMAGE):latest .