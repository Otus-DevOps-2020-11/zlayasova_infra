#!/bin/bash
yc compute instance create \
--name reddit-app \
--hostname reddit-app \
--memory=4 \
--create-boot-disk name=reddit-full,image-id=fd8m4md02obun4uuelrr,size=25GB \
--network-interface subnet-name=default-ru-central1-b,nat-ip-version=ipv4 \
--metadata serial-port-enable=1 \
--metadata-from-file user-data=./metadata
