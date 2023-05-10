#!/usr/bin/env bash

set -Eeuo pipefail

source ./vars.env

DEBUG_LEVEL=info # possible values: info, debug, trace, warn, error, crit

exec lighthouse \
--debug-level $DEBUG_LEVEL \
bn \
--datadir $LH_BEACON_DIR \
--testnet-dir $CONFIG_DIR \
--enable-private-discovery \
--staking \
--execution-jwt=$JWT_SECRET \
--execution-endpoint="http://localhost:8551" \