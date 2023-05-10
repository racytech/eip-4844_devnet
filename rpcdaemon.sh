#!/usr/bin/env bash

source ./vars.env

BIN_DIR=./erigon/build/bin

LOG_LEVEL="dbug"

exec $ERIGON_BIN_DIR/rpcdaemon \
--log.console.verbosity=$LOG_LEVEL \
--datadir=$ERIGON_DATA_DIR \
--http.api=eth,erigon,web3,net,debug,trace,txpool,parity \