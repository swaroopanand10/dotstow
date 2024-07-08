#!/bin/bash

CUR_DIR=$(realpath "$(dirname "$0")")

source "$CUR_DIR"/packages.sh
source "$CUR_DIR"/paru-function.sh

_installPackagesParu "${packagesParu[@]}"
