# docker-centos66npm

Dockerfile to run NPM on Centos 6.6.

## Usage

Run ${COMMAND} in the centos6 build environment:

```bash
docker run --rm -it -v $PWD:/srv swco/centos66npm ${COMMAND}
```