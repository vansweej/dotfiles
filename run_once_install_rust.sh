#!/usr/bin/env sh

curl https://sh.rustup.rs -sSf | sh -s -- -y

rustup component add rust-src

cargo install cargo-tarpaulin
cargo install cargo-edit
cargo install cargo-feature

curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.cargo/bin/rust-analyzer
chmod +x ~/.cargo/bin/rust-analyzer
