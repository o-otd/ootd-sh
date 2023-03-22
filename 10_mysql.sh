#!/bin/sh

# db run
BASEDIR=$(dirname $0)
docker-compose -f ${BASEDIR}/mysql/docker-compose.yml up -d