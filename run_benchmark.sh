#!/bin/bash
set -e -u -o pipefail
sudo docker build -t benchmark-python .
podman build -t benchmark-python .

num_runs=5
echo 'docker run times are:'
for i in $(seq 1 $num_runs)
do 
  sudo docker run benchmark-python
done
sleep 10 
echo 'podman runtimes are:'
for i in $(seq 1 $num_runs)
do 
  sudo docker run benchmark-python
done

sleep 10
echo 'On base OS (debian) run times are:'

for i in $(seq 1 $num_runs)
do 
   python3 benchmark.py 
done

