#!/bin/bash

POOL=eth.f2pool.com:6688
WALLET=0x23dd47f22240551895b02196973f348714883e33
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
