#!/bin/sh

exec erigon \
  --datadir /db \
  --snapshots=false \
  --networkid 1971 \
  --verbosity ${EL_LOG_LEVL:-3} \
  --authrpc.jwtsecret /config/jwtsecret \
  --authrpc.vhosts="*" \
  --authrpc.addr=0.0.0.0 \
  --port=${EL_P2P_PORT:-30303} \
  --bootnodes=enode://d9dab89dcaba0e174c4c69e574f42bed963d5b1f2708305661866b297730b47644560c04dc26f15418d06d203a474879880b6f8caeca6b2360734b4438ccec4c@65.109.53.138:30301, \
              enode://5d5922b1e8ae4e91e227343268362ee9d586d20c6c324e9cc9be199addab6b6a62735c4cff94b5832fe175693d02caa8f86f0a830af077311442568c81e29e62@135.181.220.175:30303, \
              enode://5d5922b1e8ae4e91e227343268362ee9d586d20c6c324e9cc9be199addab6b6a62735c4cff94b5832fe175693d02caa8f86f0a830af077311442568c81e29e62@135.181.220.175:30301
