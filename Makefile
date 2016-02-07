REPOSITORY       ?= 578700794486.dkr.ecr.us-east-1.amazonaws.com/ambassador
TAG              ?= v3

IMAGE = $(REPOSITORY):$(TAG)
LATEST = $(REPOSITORY):latest

.PHONY: build
build: Dockerfile
	docker build --rm -t $(IMAGE) .
	docker tag -f $(IMAGE) $(LATEST)

.PHONY: push
push:
	docker push $(IMAGE)
	docker push $(LATEST)

.PHONY: tag
tag:
	git tag $(TAG)
	git push --tags
