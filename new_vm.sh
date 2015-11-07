#!/bin/bash

set -e

instance_name=interop-server-$(date +%F-%H-%M-%S)

gcloud compute instances create ${instance_name} \
    --image ubuntu-14-04 \
    --zone us-central1-c \
    --machine-type n1-standard-1 \
    --tags http-server

# FIXME(prattmic): This may be flaky
echo "Waiting for VM boot..."
sleep 10

# Copy bootstrap file
gcloud compute copy-files bootstrap.sh ${instance_name}:~ --zone us-central1-c

# Run bootstrap
gcloud compute ssh ${instance_name} --zone us-central1-c --command "bash bootstrap.sh"

# Print some details
gcloud compute instances list ${instance_name} --zone us-central1-c

info=$(gcloud compute instances list ${instance_name} --zone us-central1-c)
ip=$(echo ${info} | tail -n 1 | awk '{print $12}')
echo -e "\nServer: http://${ip}/"
