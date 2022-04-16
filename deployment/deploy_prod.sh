#!/bin/sh

ssh ubuntu@104.236.57.112 <<EOF
  cd codemanufacturer
  git pull
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
