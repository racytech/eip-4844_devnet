#!/usr/bin/env bash

set -Eeuo pipefail

ERIGON="https://github.com/roberto-bayardo/erigon.git"
ERIGON_BRANCH="eip-4844"

LH=https://github.com/realbigsean/lighthouse.git # is this the right repo?
LH_BRANCH="devnetv5"

# Erigon
if [ ! -d "./erigon" ]; then
    git clone --recurse-submodules $ERIGON
fi


cd erigon

git checkout $ERIGON_BRANCH
git pull origin $ERIGON_BRANCH


make erigon
make rpcdaemon

cd ..

# Lighthouse
if [ ! -d "./lighthouse" ]; then
    git clone --recurse-submodules $LH
fi

cd lighthouse

git checkout $LH_BRANCH
git pull origin $LH_BRANCH

make

cd ..


