#! /bin/bash

cd /root/superset/bin

fabmanager create-admin --app superset

superset db upgrade
superset load_examples
superset init

superset runserver
