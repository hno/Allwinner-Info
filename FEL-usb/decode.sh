#!/bin/sh
cat "$@" | sed -e 's/ \([0-9a-z][0-9a-f]\)   / \1__/g; s/     / ____/g' | awk -f decode.awk
