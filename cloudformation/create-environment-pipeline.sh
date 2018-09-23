#!/bin/bash

aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --region eu-west-1 \
    --stack-name wixit-core \
    --template-body file://environment-pipeline.yaml \
    --parameters file://environment-pipeline-params.json