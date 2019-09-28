#!/bin/bash

set -e

python3 -m homeassistant --version
cp "$1" secrets.yaml
python3 -m homeassistant \
        --config ./ \
        --script check_config \
        --info all