#!/bin/bash

mkdir -p /opt/monorail/rackhd/node_modules/on-tftp/static/tftp
cd /opt/monorail/rackhd/node_modules/on-tftp/static/tftp

for file in $(echo "\
monorail.ipxe \
monorail-undionly.kpxe \
monorail-efi64-snponly.efi \
monorail-efi32-snponly.efi");do
wget "https://dl.bintray.com/rackhd/binary/ipxe/$file"
done

cd -
