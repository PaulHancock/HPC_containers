#! /usr/bin/env bash
docker run -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/test:/output \
       --privileged -t --rm quay.io/singularity/docker2singularity \
       --name mwa-reduce_2020.11.30.sif paulhancock/mwa-reduce:2020.11.30
