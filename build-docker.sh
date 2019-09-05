#!/bin/bash

set -e 
DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR/
docker build --no-cache --rm . -t pontusvisiongdpr/pontus-i18n

docker push pontusvisiongdpr/pontus-i18n

