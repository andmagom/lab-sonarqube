#!/bin/bash

envsubst < files/ingress.yaml.in > files/ingress.yaml

export MY_ENV=TEST_VALUE
