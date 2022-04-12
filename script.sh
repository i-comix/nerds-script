#!/system/bin/sh

apt update -y
clear

echo "Installing python..."
        pkg install python -y
        clear

echo "Installing ffmpeg..."
        apt install ffmpeg -y
        apt update -y
        clear

echo "Installing wget..."
        pkg install wget -y
        clear

echo "Installing Downloader..."
        pip install -U yt-dlp
        clear

echo "setting up config..."
        mkdir -p /data/data/com.termux/files/home/storage/shared/youtube
sleep 1.5
        mkdir -p ~/.config/yt-dlp
sleep 1.5
        wget https://raw.githubusercontent.com/i-comix/nerds-script/main/config -P /data/data/com.termux/files/home/.config/yt-dlp
sleep 1.5
        mkdir -p ~/bin
sleep 1.5
        wget https://raw.githubusercontent.com/i-comix/nerds-script/main/termux-url-opener -P /data/data/com.termux/files/home/bin
        clear
sleep 1.5

echo "All Done."

kill -1 $PPID
