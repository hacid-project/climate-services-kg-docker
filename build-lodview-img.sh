#!/usr/bin/env bash

if [ -d "LodView" ]; then rm -Rf LodView; fi
git clone --branch fix-war-plugin --single-branch https://github.com/miguel76/LodView
cp ./lodview-conf.ttl ./LodView/src/main/webapp/WEB-INF/conf.ttl
cd LodView
mvn compile war:war
sudo docker build -t lodview .
cd ..
rm -rf LodView
