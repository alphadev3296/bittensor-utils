#!/bin/bash
# DESCRPTION: Register miner on mainNet

# load env
set -a
source .env
set +a

# print env
echo "Wallet: ${WALLET}"
echo "Hotkey: ${HOTKEY}"

# activate python venv
source .venv/bin/activate

# register miner
btcli subnet register \
    --wallet.name ${WALLET} \
    --wallet.hotkey ${HOTKEY} \
    --subtensor.network main \
    --netuid 8