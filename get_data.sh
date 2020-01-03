#!/bin/sh

url="https://api.github.com/orgs/maemo-leste/repos"

while [ -n "$url" ]; do
	echo "$url" >&2
	curl -Ss -n "$url"
	url="$(curl -Ss -I -n "$url" | sed -n -E 's/Link:.*<(.*?)>; rel="next".*/\1/p')"
done > data.json
