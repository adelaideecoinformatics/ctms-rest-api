#!/usr/bin/env bash
set -e
cd `dirname "$0"`
pip install -r /app/requirements.txt
rm -rf \
 /var/lib/apt/lists/* \
 /tmp/* \
 /var/tmp/*
rm setup.sh
