---
layout: documentation
---

# Build environment

This template comes with a small build environment for development based on [GNU Make](https://www.gnu.org/software/make/).

## Prerequisites

The build is fully dockerised. Therefore, the only prerequisites are:

- [Docker](https://www.docker.com/), and
- [GNU Make](https://www.gnu.org/software/make/)


## Build targets

There are two main make targets:

1) Launch a local web-server and automatically updates the
   website every time a source file changes

```bash
make preview
```

2) Build the web page and deploys it to GitHub pages.

```bash
make deploy
```

## Build container

The template provides a `Dockerfile` in the `container` folder for a suitable build
environment. The container has [Couscous](http://couscous.io) and [Less](http://lesscss.org/)
pre-installed.

### SSH and GitHub credentials

The container can also deploy the generated site to GitHub, but needs access to
your GitHub credentials. Your `.ssh` folder is linked into the container at runtime
to achieve this. Further, your git name and email are passed as environment variables.

If your local git setup (including password-free ssh) is functioning, you should not have any
problems committing from within the container.


### Force container build

Make checks if a Docker image with name `couscous` exists. It will only trigger a
Docker build *automatically* if the image is not present. To force a rebuild of the
build container use

```bash
make container-build
```
