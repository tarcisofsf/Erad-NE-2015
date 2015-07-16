#!/bin/bash

time head -n 2 newFile-1 |tr ' ' '-' | tr ';' ' ' | xargs -P 100 -n 8 ./geoCity.sh 
