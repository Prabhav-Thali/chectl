#!/usr/bin/env bash

source /home/abhay/env.sh
rm -rf /root/.cache/chectl/templates
./bin/run server:stop
./bin/run server:delete
