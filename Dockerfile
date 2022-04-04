ARG SUPERSET_VERSION
FROM apache/superset:$SUPERSET_VERSION
ARG TERADATASQLALCHEMY_VERSION
RUN python3 -m pip install teradatasqlalchemy==$TERADATASQLALCHEMY_VERSION
USER root
RUN groupmod -g 2000 superset
RUN usermod -u 2000 superset
USER superset