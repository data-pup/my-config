#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o xtrace

rustup update
rustup component add rls rust-analysis rust-src
