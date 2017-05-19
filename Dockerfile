FROM python:latest

RUN pip install --upgrade setuptools pip
RUN pip install superset

ENTRYPOINT ["/bin/sh","-c","init.sh"]
