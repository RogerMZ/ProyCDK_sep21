#!/bin/bash

docker run -itd --name test_api01 -p 3000:3000 --rm rogermz/api_cdk_sep:$1

