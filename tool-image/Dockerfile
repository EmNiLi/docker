FROM alpine:edge

LABEL maintainer="Guenther Morhart"


#
# Setups
#
COPY fasteners-0.14.1-py2.py3-none-any.whl /tmp/fasteners-0.14.1-py2.py3-none-any.whl

RUN apk add --update \
    rsync \
    duplicity \
    py-pip && \
    pip install /tmp/fasteners-0.14.1-py2.py3-none-any.whl


