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

"setting up config..."
        mkdir /data/data/com.termux/files/home/storage/shared/youtube
sleep 1.5
        mkdir -p ~/.config/yt-dlp
sleep 1.5
        wget https://raw.githubusercontent.com/i-comix/nerds-script/main/config?token=GHSAT0AAAAAABS4TBIQLPDBY3IQ5LAAKENSYSUKWMA -P /data/data/com.termux/files/home/.config/yt-dlp
        mkdir ~/bin
sleep 1.5
        wget https://raw.githubusercontent.com/i-comix/nerds-script/main/termux-url-opener?token=GHSAT0AAAAAABS4TBIRVCP5CLKDIFY45RKSYSUKXUA -P /data/data/com.termux/files/home/bin
        clear
sleep 1.5

echo "All Done."

kill -1 $PPID
