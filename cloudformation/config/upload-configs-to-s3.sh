#!/bin/bash

aws s3 cp . "s3://wixit-core-configs/configs" --recursive --exclude "*.sh"