FROM python:3.8.1
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

RUN apt-get update && apt-get install -y git libssl-dev build-essential
WORKDIR /docs

COPY action.sh /action.sh

RUN chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
