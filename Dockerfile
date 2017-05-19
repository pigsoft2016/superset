
FROM ubuntu:14.04

#WORKDIR /usr/src/app

RUN apt-get update 
RUN apt-get install -y build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev

#RUN pip install --upgrade setuptools pip
#RUN pip install superset

RUN pip install virtualenv

WORKDIR /root
RUN virtualenv venv
RUN . ./venv/bin/activate
RUN pip install --upgrade setuptools pip
RUN pip install superset

#ADD ./superset  /root/venv/lib/python2.7/site-packages/
#ADD ./init.sh  /root/
#RUN chmod +x /root/init.sh
WORKDIR /root/venv/bin
RUN ls
RUN ./fabmanager create-admin --username admin --firstname admin --lastname admin --email 222@qq.com  --password admin --app superset

RUN ./superset db upgrade

RUN ./superset load_examples
RUN ./superset init
