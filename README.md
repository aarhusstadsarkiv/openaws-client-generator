# openaws-client-generator

This is a simple script to generate the openaws-client from the openapi definition found on dev.openaws.dk

## Install

    git clone https://github.com/aarhusstadsarkiv/openaws-client-generator.git
    cd openaws-client-generator
    virtualvenv venv
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
