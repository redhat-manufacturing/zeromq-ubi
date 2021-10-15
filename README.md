# Zeromq Universal Base Image

## Objective

Create a rootless UBI image for zeromq for manufacturing. This is a base image to add things like EII to, so you wont execute this container directly.

### Prerequisites

Fedora 34+ or Rhel8 + machine with podman installed

### Initial Build

To build this container:

```shell
podman build -t zeromq .
```

## Test build

This will allow you to start the broker as a POC test

```shell
podman build -t zeromq-test ./test
```

Get image id from podman image list

```shell
podman image list

REPOSITORY                                   TAG         IMAGE ID      CREATED         SIZE
localhost/zeromy-test                        latest      82ef3bcf8bca  11 minutes ago  298 M
```

```shell
podman run -it <IMAGE ID>
```
