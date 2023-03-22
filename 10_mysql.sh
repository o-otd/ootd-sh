#!/bin/sh

# docker network 생성
docker network ls | grep ootd_net || docker network create --driver bridge ootd_net

# db run
BASEDIR=$(dirname $0)
docker-compose -f ${BASEDIR}/mysql/docker-compose.yml up -d