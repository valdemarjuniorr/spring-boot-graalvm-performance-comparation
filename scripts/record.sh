#!/bin/bash

. ./scripts/set_command.sh
# run a command from a variable
$DEMO_COMMAND &

# get the PID of the last command
export PERF_PID=$!

echo "PID of the process: $PERF_PID"
# generate a graph showing the CPU and memory usage of the process
psrecord $PERF_PID --plot plot$(date +%s).png --include-children &

# wait for the application to start
while [ "$(curl -s -o /dev/null -L -w ''%{http_code}'' http://localhost:8080/products)" != "200" ]; do sleep 0.001; done

# call 500K times the endpoint
echo "Simulating some load..."
hey -n 500000 http://localhost:8080/products

# kill the application
kill -9 "$PERF_PID" &
sleep 1
