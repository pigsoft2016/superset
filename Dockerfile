FROM python:latest

ADD ./superset/  /root/superset/

WORKDIR /root

RUN pip install --upgrade setuptools pip
RUN pip install superset

ENTRYPOINT ["/bin/sh","-c","init.sh"]
