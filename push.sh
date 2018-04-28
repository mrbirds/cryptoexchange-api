#!/bin/bash
docker login
docker build -t cryptoexchange_api .
docker tag cryptoexchange_api puzanov/cryptoexchange_api
docker push puzanov/cryptoexchange_api