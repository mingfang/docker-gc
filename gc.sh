#!/bin/bash

FORCE_CONTAINER_REMOVAL=1 FORCE_IMAGE_REMOVAL=1 /docker-gc/docker-gc
docker images --filter dangling=true -q|xargs --no-run-if-empty docker rmi
