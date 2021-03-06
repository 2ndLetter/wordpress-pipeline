#!/bin/bash

echo "**THIS SCRIPT VALIDATES AND CREATES/UPDATES THE CF STACK**"

aws cloudformation deploy --stack-name wordpress-pipeline --template-file template.yml --parameter-overrides file://parameters.json --no-fail-on-empty-changeset --capabilities CAPABILITY_IAM #--no-execute-changeset
