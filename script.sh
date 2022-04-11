#!/system/bin/sh

# Colors
# ----------------------------------------
BL='\e[01;90m' > /dev/null 2>&1; # Black
R='\e[01;91m' > /dev/null 2>&1; # Red
G='\e[01;92m' > /dev/null 2>&1; # Green
Y='\e[01;93m' > /dev/null 2>&1; # Yellow
B='\e[01;94m' > /dev/null 2>&1; # Blue
P='\e[01;95m' > /dev/null 2>&1; # Purple
C='\e[01;96m' > /dev/null 2>&1; # Cyan
W='\e[01;97m' > /dev/null 2>&1; # White
LG='\e[01;37m' > /dev/null 2>&1; # Light Gray
N='\e[0m' > /dev/null 2>&1; # Null
L='\033[7m' > /dev/null 2>&1; #Lines
X='\033[0m' > /dev/null 2>&1; #Closer
# ----------------------------------------

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
