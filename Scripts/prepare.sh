#!/usr/bin/env bash

export ONLY_RELEASE_TARGETS=true
export SKIP_XCODE_PROJECT=true

mkdir -p Build/Cache;
cd Build/Cache;

../../Scripts/download_frameworks.sh

cd ../..;

./Scripts/prepare.local.sh
./Scripts/prepare.prod.sh

