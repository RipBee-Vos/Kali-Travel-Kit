#!/usr/bin/env bash
set -euo pipefail

sudo apt update
sudo xargs -a "$(dirname "$0")/apt.txt" apt install -y

echo "[+] Done. Tools installed."
