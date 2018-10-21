COUSCOUS=docker run --rm --interactive \
				 --tty -p=8000:8000 -p=35729:35729 \
				 --volume $(shell pwd):/app \
				 --volume $(HOME)/.ssh:/home/couscous/.ssh \
				 -e GIT_NAME="$(shell git config --get user.name)" \
				 -e GIT_EMAIL="$(shell git config --get user.email)" \
				 couscous


.PHONY: default
default: preview

# Only build docker image if image is not present
# To force build use: make container-build
DOCKER_IMAGE_ID=$(shell docker images -q couscous)
ifeq ($(DOCKER_IMAGE_ID),"")
container: container-build
else:
container:
endif

.PHONY: preview
preview: container
	$(COUSCOUS) preview 0.0.0.0:8000

.PHONY: deploy
deploy: container
	$(COUSCOUS) deploy

.PHONY: container
container-build: container/Dockerfile container/entrypoint.sh
	docker build -t couscous container
