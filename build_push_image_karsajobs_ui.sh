#!/bin/sh

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t ghcr.io/oktaprianto/karsajobs-ui:latest -f Dockerfile .
# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo $CR_PAT | docker login ghcr.io -u oktaprianto --password-stdin ghcr.io
# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push ghcr.io/oktaprianto/karsajobs-ui:latest