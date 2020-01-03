#!/bin/sh
jq -r '.[] | .name + "," + .url + "," + .license.spdx_id' < data.json > bom.csv
