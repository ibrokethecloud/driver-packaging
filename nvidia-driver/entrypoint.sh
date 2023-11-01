#!/bin/bash

set -e

if [ -n "${DRIVER_LOCATION}" ]
then
    echo "Installing nvidia driver from ${DRIVER_LOCATION}"
    curl -o /tmp/NVIDIA.run -k $DRIVER_LOCATION
    chmod +x /tmp/NVIDIA.run
    /tmp/NVIDIA.run -q --ui=none --no-systemd
else
    echo "No DRIVER_LOCATION specified. skipping..."
fi

tail -f /dev/null
