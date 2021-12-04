#!/usr/bin/env sh

curl -sSL https://get.haskellstack.org/ | sh

git clone https://github.com/haskell/haskell-language-server --recurse-submodules /tmp && cd /tmp/haskell-language-server && stack install.hs hls-8.10.7

