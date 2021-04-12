FROM alpine as builder

RUN apk --no-cache update && \
    apk add jq bash

COPY . /build/
RUN /build/pre-build-docker.sh


FROM scratch
COPY --from=builder /build/i18n.js  /build/*.json /

