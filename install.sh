#!/bin/sh

apt-get install build-essential libasound2-dev
make

cp ./cpiped /usr/local/bin
cp ./scripts/init.d/cpiped /etc/init.d
chmod 755 /usr/local/bin/cpiped
chmod 755 /etc/init.d/cpiped
mkdir /var/run/cpiped
mkfifo /var/run/cpiped/audioin
chmod 777 /var/run/cpiped/audioin

update-rc.d cpiped defaults
