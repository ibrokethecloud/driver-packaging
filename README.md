# Driver packaging

Uses ideas from nvidia container based driver packaging and gpu-operator and packages the driver for harvester.

## harvester-base-image
Contains the base image to correlate with specific harvester versions and includes the base harvester image along with kernel-source packages to match what is shipped with specific harvester version

## nvidia-driver
Builds on top of the harvester-base-image and adds a wrapper script. The wrapper script uses a `DRIVER_LOCATION` http endpoint to download and install NVIDIA driver at runtime.

## deploy
Contains the definition of the daemonset used to deploy the nvidia-driver container image. Users are expected to build the `nvidia-driver` and push to their private repo before using it in harvester.