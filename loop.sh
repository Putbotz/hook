#!/bin/bash

# Read configuration from config.json
config_file="config.json"
url=$(jq -r '.url' "$config_file")
interval=$(jq -r '.interval' "$config_file")

send_request() {
  curl -s "$url"
}

while true; do
  send_request
  sleep "$interval"
done
