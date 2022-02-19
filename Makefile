#!/usr/bin/make -f

.PHONY: all build test

all: build

build: test
	cargo build --target wasm32-wasi --features auth --release

test:
	cargo test --target x86_64-unknown-linux-gnu --features auth
