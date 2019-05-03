# openssl-docker

[![Build Status](https://cloud.drone.io/api/badges/v7lin/openssl-docker/status.svg)](https://cloud.drone.io/v7lin/openssl-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/v7lin/openssl.svg)](https://hub.docker.com/r/v7lin/openssl)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/v7lin/openssl-docker/blob/master/LICENSE)

### usage

* docker

````
docker run --rm -it v7lin/openssl sh -c "openssl version"
docker run --rm -it -v ${PWD}:/export v7lin/openssl sh -c "openssl enc -e -${ENC_METHOD} -k ${ENC_PASSWORD} -in /export/Dockerfile -out /export/Dockerfile.enc"
````

* drone

````
- name: openssl
  image: v7lin/openssl
  environment:
    ENC_METHOD:
      from_secret: ENC_METHOD
    ENC_PASSWORD:
      from_secret: ENC_PASSWORD
  commands:
  - openssl enc -d -$ENC_METHOD -k $ENC_PASSWORD -in Dockerfile.enc -out Dockerfile
````
