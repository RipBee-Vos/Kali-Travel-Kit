#!/usr/bin/env bash
set -euo pipefail

echo "[*] Updating APT..."
sudo apt update

echo "[*] Installing packages..."
sudo xargs -a "$(dirname "$0")/apt.txt" apt install -y

echo "[*] Installing tmux config..."
cp "$(dirname "$0")/../config/tmux.conf" ~/.tmux.conf

echo "[+] Travel kit setup complete."
