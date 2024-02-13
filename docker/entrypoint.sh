#!/usr/bin/env bash
set -e

./config.sh --url https://github.com/$REPO --token $TOKEN --name $NAME --unattended
sudo ./bin/runsvc.sh

exec "$@"
