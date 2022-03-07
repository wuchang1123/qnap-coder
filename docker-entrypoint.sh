#!/bin/sh
set -e
if [[ -n $(docker ps -q -f "name=^coder$") ]];then
    echo "to start coder"
else
	echo "coder has running"
fi