#!/bin/bash

set -e

REPO_URL="https://github.com/Blockcast/beacon-docker-compose.git"
NODE_DIR="$HOME/Blockcast-Node"

function show_header() {
    clear
    echo "==============================="
    echo "        AIRDROP LEGION         "
    echo "   Telegram: @airdropalc       "
    echo "==============================="
    echo ""
}

function install_requirements() {
    echo "🔍 Checking Docker installation..."

    if command -v docker >/dev/null 2>&1 && command -v docker-compose >/dev/null 2>&1; then
        echo "✅ Docker dan Docker Compose sudah terinstal, melewati instalasi."
    else
        echo "🔧 Updating system and installing Docker dependencies..."
        sudo apt update && sudo apt upgrade -y
        sudo apt autoremove -y

        sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
        sudo apt-get update
        sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
        echo "✅ Instalasi Docker dan Docker Compose selesai."
    fi
}

function clone_repo() {
    echo "📥 Cloning Blockcast repo..."
    git clone "$REPO_URL" "$NODE_DIR"
    cd "$NODE_DIR"
}

function start_blockcast() {
    cd "$NODE_DIR"
    echo "🚀 Starting Blockcast service..."
    docker compose up -d
}

function init_blockcast() {
    cd "$NODE_DIR"
    echo "📋 Initializing Blockcast node..."
    docker compose exec blockcastd blockcastd init
}

function show_logs() {
    cd "$NODE_DIR"
    echo "📜 Showing Blockcast logs..."
    docker compose logs -f
}

function stop_and_cleanup() {
    cd "$NODE_DIR"
    echo "🧹 Stopping and cleaning Blockcast setup..."
    docker compose down -v --rmi all --remove-orphans
    cd "$HOME"
    rm -rf "$NODE_DIR"
    echo "✅ Cleanup complete."
}

function main_menu() {
    show_header
    while true; do
        echo "===== Blockcast Node Manager ====="
        echo "1) Install dependencies & clone repo"
        echo "2) Start Blockcast service"
        echo "3) Jalankan node (copy Hardware ID & Challenge Key)"
        echo "4) Cek logs node kamu"
        echo "5) Stop dan Hapus semua"
        echo "6) Exit"
        echo "=================================="
        read -rp "Choose an option [1-6]: " choice

        case $choice in
            1) install_requirements && clone_repo ;;
            2) start_blockcast ;;
            3) init_blockcast ;;
            4) show_logs ;;
            5) stop_and_cleanup ;;
            6) echo "👋 Exiting..."; break ;;
            *) echo "❗ Invalid option. Try again." ;;
        esac
    done
}

main_menu
