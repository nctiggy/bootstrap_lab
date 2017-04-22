#!/bin/bash

mkdir -p /opt/monorail/rackhd/node_modules/on-http/static/http/common
cd /opt/monorail/rackhd/node_modules/on-http/static/http/common

for file in $(echo "\
base.trusty.3.16.0-25-generic.squashfs.img \
discovery.overlay.cpio.gz \
initrd.img-3.16.0-25-generic \
vmlinuz-3.16.0-25-generic");do
wget "https://dl.bintray.com/rackhd/binary/builds/$file"
done

cd -
