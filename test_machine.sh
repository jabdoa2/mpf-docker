#!/bin/bash
set -e

MACHINE_NAME=$1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MPF=$DIR/../mpf/
BUILD=$DIR/build/
MACHINE_DIR=$MPF/machine_files/$MACHINE_NAME

sudo rm -Rf $BUILD
mkdir $BUILD
git clone $MPF $BUILD
git clone $MACHINE_DIR $BUILD/machine_files/$MACHINE_NAME

sudo docker run --rm --name mpftest -v $BUILD:/build testimg bash -c "cd /build; python test_machine.py $MACHINE_NAME"
