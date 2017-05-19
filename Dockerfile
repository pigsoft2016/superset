FROM python:latest

RUN apt-get install build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev

WORKDIR /root

RUN pip install --upgrade setuptools pip
RUN pip install superset

ADD ./superset/  /root/superset/

ENTRYPOINT ["/bin/sh","-c","init.sh"]
