#!/usr/bin/env sh

curl https://sh.rustup.rs -sSf | sh -s -- -y

~/.cargo/bin/rustup component add rust-src

~/.cargo/bin/cargo install cargo-tarpaulin
~/.cargo/bin/cargo install cargo-edit
~/.cargo/bin/cargo install cargo-feature
~/.cargo/bin/cargo install sccache

curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.cargo/bin/rust-analyzer
chmod +x ~/.cargo/bin/rust-analyzer
