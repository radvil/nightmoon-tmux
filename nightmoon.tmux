#!/usr/bin/env bash

STATUS_BAR="src/status-bar.conf"
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

main() {
	tmux source-file "$CURRENT_DIR/$STATUS_BAR"
}

main
