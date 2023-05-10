#!/usr/bin/env bash

set -Eeuo pipefail

source ./vars.env

BIN_DIR=./erigon/build/bin

LOG_LEVEL="dbug"

$BIN_DIR/erigon init --datadir=$ERIGON_DATA_DIR $EL_GENESIS