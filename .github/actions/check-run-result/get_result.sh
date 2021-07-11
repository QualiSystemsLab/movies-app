#!/bin/bash
INTERVAL=1
TIMEOUT=10
get_run_info () {
local RUN_ID=$1
  INFO=$(curl -sb -H "Accept: application/json" https://api.github.com/repos/QualiSystemsLab/movies-app/actions/runs/$RUN_ID)
  PROGRESS=$(echo $INFO | jq -r '.status')
  RESULT=$(echo $INFO | jq -r '.conclusion')
}

get_run_result (){
        local RUN_ID=$1
        get_run_info $RUN_ID
        until [ $PROGRESS = "completed" ]; do
                echo "progress: $PROGRESS"
                get_run_info 1004249674
    sleep $INTERVAL
done
echo $RESULT
}