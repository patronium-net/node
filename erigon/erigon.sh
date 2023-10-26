#!/bin/sh

erigon init  --datadir /db /config/genesis.json

#network_id=$(jq -r '.config.chainId' /config/genesis.json)

exec erigon \
  --datadir /db \
  --snapshots=false \
  --networkid 1971 \
  --verbosity ${EL_LOG_LEVL:-3} \
  --authrpc.jwtsecret /config/jwtsecret \
  --authrpc.vhosts="*" \
  --authrpc.addr=0.0.0.0 \
  --port=${EL_P2P_PORT:-30303} \
  --bootnodes=enode://d9dab89dcaba0e174c4c69e574f42bed963d5b1f2708305661866b297730b47644560c04dc26f15418d06d203a474879880b6f8caeca6b2360734b4438ccec4c@65.109.53.138:30301
