# openaws-client-generator

This is a simple script to generate the openaws-client from the openapi definition found on dev.openaws.dk

## Install

    git clone git@github.com:aarhusstadsarkiv/openaws-client-generator.git
    cd openaws-client-generator
    virtualenv venv
    source venv/bin/activate
    pip install -r requirements.txt

## Usage

```bash
source venv/bin/activate
./generate_client.sh
```

The client is generated (or updated) in the `openaws-client` dir. 

Then 

    cd openaws-client 
    
And now commit any changes and maybe create a new `tag`.

Visit the generated client here:

[openaws-client](https://github.com/aarhusstadsarkiv/openaws-client)

## Note

You may look into [openaws.py](openaws.py) for some shortcuts into the generated client.
