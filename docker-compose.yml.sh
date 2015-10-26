#!/bin/bash

cat <<EOF
web:
  build: .
  working_dir: /usr/src/app
  volumes:
    - .:/usr/src/app
  command: npm start
  env_file: ./secrets
  environment:
    WD_URL: 'http://localhost:3000'
    WD_HOSTNAME: 'localhost'
  ports:
    - "3000:3000"
  links:
    - mongo:mongo
    - redis:redis
  stdin_open: true
  tty: true
  user: $(id -u -n)

mongo:
  image: mongo:3.0
  ports:
    - "27018:27017"

redis:
  image: redis:2.8
EOF
