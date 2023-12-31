#!/bin/sh

# check if directory exists 'openaws-client'
# if not clone it
if [ ! -d "openaws-client" ]; then
    git clone git@github.com:aarhusstadsarkiv/openaws-client.git
fi

# Mv git repo to tmp
mv openaws-client openaws-client-tmp

# generate new client
# https://dev.openaws.dk/v1/openapi.json
# http://localhost:8000/v1/openapi.json 
openapi-python-client generate --config config.yml --url https://dev.openaws.dk/v1/openapi.json

# copy new client code on top of old client
cp -rf openaws-client/* openaws-client-tmp/
rm -rf openaws-client
mv openaws-client-tmp openaws-client

MESSAGE="

# About

Client made using: [openapi-python-client](https://github.com/openapi-generators/openapi-python-client) and 
[openaws-client-generator](https://github.com/aarhusstadsarkiv/openaws-client-generator)

## Install or update the client

    pip uninstall -y openaws-client                                                                                         
    pip install git+https://github.com/aarhusstadsarkiv/openaws-client@main

Or if you have a specific tag:

    pip install git+https://github.com/aarhusstadsarkiv/openaws-client@v0.7.0

"
# Add MESSAGE TO the top of the file 'openaws-client/README.md'
echo "$MESSAGE" | cat - openaws-client/README.md > temp && mv temp openaws-client/README.md
