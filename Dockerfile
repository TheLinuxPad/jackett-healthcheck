FROM linuxserver/jackett:latest

LABEL maintainer="sid at siddhantkhera dot com"

HEALTHCHECK --interval=90s --timeout=15s --retries=3 CMD curl --fail http://localhost:9117/UI/Dashboard || exit 1
