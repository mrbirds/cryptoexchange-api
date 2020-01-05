#!/bin/bash
docker login
docker build -t cryptoexchange_api .
docker tag cryptoexchange_api athcoinindex/cryptoexchange_api
docker push athcoinindex/cryptoexchange_api
