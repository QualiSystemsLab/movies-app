#!/bin/bash
INTERVAL=3
get_run_info () {
local RUN_ID=$1 
  INFO=$(curl -sb -H "Accept: application/json" https://api.github.com/repos/QualiSystemsLab/movies-app/actions/runs/$RUN_ID)
  PROGRESS=$(echo $INFO | jq -r '.status')
  RESULT=$(echo $INFO | jq -r '.conclusion')
}
PROGRESS="undefined"
get_run_info
echo $INFO