#!/bin/bash

# Update server
apt-get update
apt-get upgrade -y

# Install essentials
apt-get -y install build-essential binutils-doc git -y

# Install XFCE4
apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
apt-get install gnome-icon-theme-full tango-icon-theme
echo "allowed_users=anybody" > /etc/X11/Xwrapper.config

# Install python3
apt-get install -y python3-pip python3-dev

# Install Tensorflow
pip3 install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.3.0-cp34-cp34m-linux_x86_64.whl

# Install Jupyter
pip3 install jupyter

# Install python libraries
pip3 install scipy
pip3 install sklearn
echo "[vagrant provisioning] Setup complete"
