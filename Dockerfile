FROM linuxserver/jackett:latest

LABEL maintainer="sid at siddhantkhera dot com"

HEALTHCHECK --interval=5m --timeout=10s --retries=4 CMD curl --fail http://localhost:9117/UI/Dashboard || exit 1
