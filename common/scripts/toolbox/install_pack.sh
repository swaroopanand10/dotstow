#!/bin/bash

CUR_DIR=$(realpath "$(dirname "$0")")

source "$CUR_DIR"/packages_yay.sh
source "$CUR_DIR"/yay_function.sh

_installPackagesYay "${packagesYay[@]}"
