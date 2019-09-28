#!/bin/bash

set -e

python3 -m homeassistant --version
cp "$*" secrets.yaml
python3 -m homeassistant \
        --config ./ \
        --script check_config \
        --info all