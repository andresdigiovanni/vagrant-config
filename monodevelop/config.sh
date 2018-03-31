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

# Install mono
apt-get -y install mono-complete mono-devel
# Dependencies to build fsharp and monodevelop
apt-get -y install git autoconf automake make intltool gtk-sharp2 libglib2.0-cil-dev gnome-sharp2

# Download, build and install mono develop and fsharp
git clone --recursive -b monodevelop-5.0 https://github.com/mono/monodevelop.git
cd monodevelop
./configure --prefix=/usr --profile=stable
make
make install

exit 0