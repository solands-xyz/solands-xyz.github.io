#!/bin/bash
set -euo pipefail

if [ $# -ne 1 ]; then
    echo "Usage: $0 <target host>"
    exit 1
fi

for c in 1 2; do
    rsync -avr ${c}/ ${1}:/var/www/s.solands.xyz/${c}/
done
