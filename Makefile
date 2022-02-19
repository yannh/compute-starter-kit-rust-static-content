#!/usr/bin/make -f

.PHONY: all build test

all: build

build: test
	cargo build --target wasm32-wasi --features auth --release

test:
	CARGO_TARGET_WASM32_WASI_RUNNER=true cargo test --target wasm32-wasi