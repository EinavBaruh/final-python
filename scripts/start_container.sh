#!/bin/bash
set -e

docker pull einaybr/final-python:latest

docker stop final-python-container || true
docker rm final-python-container || true

docker run -d \
  --name final-python-container \
  --restart unless-stopped \
  -p 80:5000 \
  einavbr/final-python:latest