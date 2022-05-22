#!/bin/bash

GOTARGZ=$(curl -s https://go.dev/dl/ \
  | egrep "go[0-9].[0-9]+.[0-9]+.linux-arm64.tar.gz" \
  | sed -e 's/.*\(go[0-9].[0-9]\+.[0-9]\+.linux-arm64.tar.gz\).*/\1/g' \
  | head -n1)

curl -LO https://go.dev/dl/$GOTARGZ

sudo tar -C /usr/local -xzf $GOTARGZ
