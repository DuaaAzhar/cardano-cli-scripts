#!/bin/bash

./cardano-node run \
   --topology testnet/topology.json \
   --database-path testnet/db \
   --socket-path ~/Documents/EritheiaProjects/cardano/cardano-node-1.35.5-linux/testnet/node.socket \
   --host-addr 0.0.0.0 \
   --port 1337 \
   --config testnet/config.json

