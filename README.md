# docker-superset

A Docker image that extends the official Apache Superset image and adds `teradatasql`.

## Building

The dockerfile is parametrized. You need to specify SUPERSET_VERSION and TERADATASQL_VERSION to build the image:

NOTE: As of March 2022, Superset Docker images still don't support versioning. This build process sets SUPERSET_VERSION to `latest`.

```
docker build --build-arg SUPERSET_VERSION=latest --build-arg TERADATASQL_VERSION=17.10.0.9 -t teradata/superset:latest .
podman build --build-arg SUPERSET_VERSION=latest --build-arg TERADATASQL_VERSION=17.10.0.9 -t teradata/superset:latest .
```