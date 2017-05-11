#!/bin/bash 

echo $1
curl -H 'Content-Type: application/json' -X POST localhost:5984/_openag/api/0.0.1/service/environments/environment_1/start_recipe -d $1

