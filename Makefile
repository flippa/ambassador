REGISTRY          = quay.io/flippa
PROJECT           = ambassador
TAG              ?= v1

IMAGE = $(REGISTRY)/$(PROJECT):$(TAG)
LATEST = $(REGISTRY)/$(PROJECT):latest

.PHONY: build
build: Dockerfile
	docker build --rm -t $(IMAGE) .
	docker tag $(IMAGE) $(LATEST)

.PHONY: push
push:
	docker push $(IMAGE)
	docker push $(LATEST)

.PHONY: tag
tag:
	git tag $(TAG)
	git push --tags
