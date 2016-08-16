#!/bin/sh
cd /tmp
echo 'Downloading new blacklists ...'
wget -N http://www.shallalist.de/Downloads/shallalist.tar.gz -a /var/log/shalla.log
echo 'New list downloaded! Extracting...'
tar -zxf shallalist.tar.gz
echo 'New list extracted'
cp -r /tmp/BL/* /var/lib/docker/volumes/dansguardian_list/_data/blacklists/
echo 'Success!!!'
