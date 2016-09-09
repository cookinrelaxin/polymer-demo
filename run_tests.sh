#!/bin/bash

set -e

if [ "$TEST_TYPE" = "integ" ]
then
    echo "Integration test stub"
elif [ "$TEST_TYPE" = "unit" ]
then
    echo "Unit test stub"
else
    echo "No TEST_TYPE environment variable specified. Must of one of 'integ' or 'unit'."
fi
