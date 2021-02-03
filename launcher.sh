#!/bin/bash

POOL=eth.f2pool.com:6688
WALLET=0x21f6c5cb2e1c8230126a302f675e3869319476dc
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
