#!/bin/bash

/docker-gc/docker-gc
docker images --filter dangling=true -q|xargs --no-run-if-empty docker rmi
