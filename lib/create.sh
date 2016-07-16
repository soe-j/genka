#!/usr/bin/env bash

set -e

create () {
  http post localhost:3000/$1s/ name=$2
}

case $1 in
  project | stage | member )
    if [ -n "$2" ]
    then
      create $1 $2
    else
      echo "genka/create/[project|stage|member]/name"
      exit 2
    fi
    ;;
  * )
    echo "genka/create/[project|stage|member]/name"
    exit 1
    ;;
esac
