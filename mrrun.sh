#!/usr/bin/env bash                                            
# ex: set filetype=sh :

set -euo pipefail

cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )"
./autogen.sh
./configure
make clean all
sudo make install
exit 0

