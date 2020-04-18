#!/bin/bash

echo "Node-Server app :: Building docker containers."
while getopts ":dp" opt; do
  case ${opt} in
    d )
        echo "Building app in development mode."
        docker-compose -f docker-compose-dev.yaml up --build
      ;;
    p )
        echo "Building app in production mode."
        docker-compose -f docker-compose.yaml up --build
      ;;
    \? ) echo "Usage: start.sh [-d] [-p]."
      exit 1;;
  esac
done