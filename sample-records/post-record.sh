#!/bin/bash
# helper to POST a JSON file to the CTMS-REST-API
set -e
record=$1
if [ -z "$record" ]; then
  echo "[ERROR] filename of record to load must be supplied"
  echo "usage: $0 <path-to-record> [host:port, default 127.0.0.1:5000]"
  echo "   eg: $0 ctms1.json"
  echo "   eg: $0 ctms2.json otherhost.com:8888"
  exit 1
fi
host_and_port='127.0.0.1:5000'
if [ ! -z "$2" ]; then
  host_and_port=$2
fi
curl \
  -X POST \
  -H "Content-type: application/json" \
  -d @$record \
  http://$host_and_port/ctms_record
