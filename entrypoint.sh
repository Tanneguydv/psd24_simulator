#!/bin/bash

set -e
source /opt/ros/jazzy/setup.bash
source install/setup.bash

echo "Provided arguments: $@"
exec $@
