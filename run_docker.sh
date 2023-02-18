#!/usr/bin/env bash

# Step 1:
docker build -t op-ml .

# Step 2: 
docker image ls

# Step 3: 
docker run --rm -it -p 8000:80 op-ml
