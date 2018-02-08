#!/bin/bash
for m in $(docker images| grep '<none>'| awk '{print $3}'); do
docker rmi $m
done