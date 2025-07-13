#!/bin/bash
# DESCRPTION: Register miner on testNet

# load env
set -a
source .env
set +a

# print env
echo "Wallet: ${WALLET_TESTNET}"
echo "Hotkey: ${HOTKEY_TESTNET}"

# activate python venv
source .venv/bin/activate

# register miner
btcli subnet register \
    --wallet.name ${WALLET_TESTNET} \
    --wallet.hotkey ${HOTKEY_TESTNET} \
    --subtensor.network test \
    --netuid 116