#!/bin/bash

TAGS=$1

if [ -z $TAGS ]; then
    ansible-playbook  playbook-k8s-cluster.yml    --list-tags --list-tasks 
else
    ansible-playbook  playbook-k8s-cluster.yml   --list-tasks | grep $TAGS
fi


