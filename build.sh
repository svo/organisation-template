#!/bin/bash

image_tag=${1:-latest}

rm -rf infrastructure/ansible/files/html &&
mkdir -p infrastructure/ansible/files/html &&

docker login &&

docker pull svanosselaer/organisation-template-buildnode &&

docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/organisation-template-buildnode -w=/organisation-template-buildnode svanosselaer/organisation-template-buildnode /bin/bash -c "source ~/.profile && ./bin/build && ./bin/create-service $image_tag && ./bin/build-architecture-sensible-defaults-radar $image_tag && ./bin/build-engineering-sensible-defaults-radar $image_tag" &&

docker tag "svanosselaer/organisation-template-service:$image_tag" "svanosselaer/organisation-template-service:latest" &&
docker tag "svanosselaer/organisation-template-architecture-sensible-defaults-radar:$image_tag" "svanosselaer/organisation-template-architecture-sensible-defaults-radar:latest" &&
docker tag "svanosselaer/organisation-template-engineering-sensible-defaults-radar:$image_tag" "svanosselaer/organisation-template-engineering-sensible-defaults-radar:latest" &&

docker push "svanosselaer/organisation-template-service:$image_tag" &&
docker push svanosselaer/organisation-template-service:latest &&
docker push "svanosselaer/organisation-template-architecture-sensible-defaults-radar:$image_tag" &&
docker push svanosselaer/organisation-template-architecture-sensible-defaults-radar:latest &&
docker push "svanosselaer/organisation-template-engineering-sensible-defaults-radar:$image_tag" &&
docker push svanosselaer/organisation-template-engineering-sensible-defaults-radar:latest
