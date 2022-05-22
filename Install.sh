#!/bin/bash

curl -sLO curl -s https://go.dev$(curl -s https://go.dev/dl/ \
  | egrep "go[0-9].[0-9]+.[0-9]+.linux-arm64.tar.gz" \
  | sed -e 's/.*\(\/dl\/go[0-9].[0-9]\+.[0-9]\+.linux-arm64.tar.gz\).*/\1/g' \
  | head -n1)
