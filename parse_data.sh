#!/bin/sh

echo 'Name,URL,License' > bom.csv
jq -r '.[] | .name + "," + .html_url + "," + .license.spdx_id' < data.json | sort >> bom.csv
