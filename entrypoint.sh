#!/bin/sh

set -e

sh -c "python3 -m homeassistant --version"
sh -c "cp $* secrets.yaml"
sh -c "python3 -m homeassistant \
        --config ./ \
        --script check_config \
        --info all"