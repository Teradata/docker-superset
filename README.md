# docker-superset

A Docker image that extends the official Apache Superset image and adds `teradatasqlalchemy`.

## Building

The dockerfile is parametrized. You need to specify SUPERSET_VERSION and TERADATASQLALCHEMY_VERSION to build the image:

NOTE: As of March 2022, Superset Docker images still don't support versioning. This build process sets SUPERSET_VERSION to `latest`.

```
docker build --build-arg SUPERSET_VERSION=latest --build-arg TERADATASQLALCHEMY_VERSION=17.0.0.2 -t teradata/superset:latest .
podman build --build-arg SUPERSET_VERSION=latest --build-arg TERADATASQLALCHEMY_VERSION=17.0.0.2 -t teradata/superset:latest .
```