#!/bin/bash

cat <<EOF
FROM node:0.12

RUN groupadd $(id -g -n) 2>/dev/null || exit 0
RUN useradd -m -g $(id -g -n) $(id -u -n)
EOF
