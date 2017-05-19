FROM python:2

WORKDIR /usr/src/app
RUN apt-get install build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev

RUN pip install --upgrade setuptools pip
RUN pip install superset

WORKDIR /root

ADD ./superset/  /root/superset/

ENTRYPOINT ["/bin/sh","-c","init.sh"]
