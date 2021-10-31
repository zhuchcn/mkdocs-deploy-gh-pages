FROM python:3.8.1
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

RUN apk add --no-cache git git-fast-import openssh build-base
WORKDIR /docs

COPY action.sh /action.sh

RUN chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
