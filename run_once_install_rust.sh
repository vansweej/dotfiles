#!/usr/bin/env sh

curl https://sh.rustup.rs -sSf | sh -s -- -y

# install tab-rs, do it here to be sure that rust is installed first
cargo install tab
tab --install all