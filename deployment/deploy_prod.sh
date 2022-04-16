#!/bin/sh

ssh ubuntu@3.215.54.55 <<EOF
  cd codemanufacturer
  git pull
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
