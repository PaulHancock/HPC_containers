#! /usr/bin/env bash
docker run -v /var/run/docker.sock:/var/run/docker.sock -v test:/output \
       --privileged -t --rm quay.io/singularity/docker2singularity \
       --name mwa_reduce-2020.9.15.sif paulhancock/mwa-reduce:2020.9.15
