FROM redis
ARG BUILDARCH
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-$BUILDARCH /tini
RUN chmod +x /tini
# liveness probe should run
# tini -s -- redis-cli ping
