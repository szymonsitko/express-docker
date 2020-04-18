#!/bin/bash

echo "Node-Server app :: Starting docker containers."
while getopts ":dp" opt; do
  case ${opt} in
    d )
        echo "Starting app in development mode."
        docker-compose -f docker-compose-dev.yaml up
      ;;
    p )
        echo "Starting app in production mode."
        docker-compose -f docker-compose.yaml up
      ;;
    \? ) echo "Usage: start.sh [-d] [-p]."
      exit 1;;
  esac
done