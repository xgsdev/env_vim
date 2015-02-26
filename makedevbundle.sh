#!/bin/bash

rm -rf ./devbundle

mkdir -p ./devbundle

cp -R ./bundle/* ./tmpbundle12/* ./devbundle

rm -rf ./bundle/

mv ./devbundle ./bundle

echo "end "
