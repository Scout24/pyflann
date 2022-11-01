FROM python:3.9

MAINTAINER IS24

RUN pip install twine

RUN mkdir -vp /tmp/pyflann

ADD . /tmp/pyflann

RUN /bin/bash -c "cd /tmp/pyflann; ./build_and_upload.sh"
