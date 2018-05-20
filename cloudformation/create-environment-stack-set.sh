#!/bin/bash

aws cloudformation create-stack-set \
    --region eu-west-1 \
    --stack-set-name wixit-test-environment \
    --template-url https://s3-eu-west-1.amazonaws.com/wixit-templates/environment-base.yaml \
    --parameters file://environment-base-params.json \

aws cloudformation create-stack-instances \
    --region eu-west-1 \
    --stack-set-name wixit-test-environment \
    --accounts '["588476158895"]' \
    --regions '["eu-west-1"]' \
    --operation-preferences FailureToleranceCount=0,MaxConcurrentCount=1