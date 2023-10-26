#!/bin/sh

exec lighthouse bn \
  --datadir /data \
  --execution-jwt /config/jwtsecret \
  --execution-endpoint http://erigon:8551 \
  --self-limiter=blob_sidecars_by_range:256/10 \
  --testnet-dir /config/testnet \
  --http \
  --http-address=0.0.0.0 \
  --metrics \
  --metrics-address=0.0.0.0 \
  --port ${CL_P2P_PORT:-9000} \
  --enr-address 65.109.53.138 \
  --enr-udp-port ${CL_P2P_PORT:-9000} \
  --enr-tcp-port ${CL_P2P_PORT:-9000} \
  --disable-peer-scoring
