#!/usr/bin/bash

# Author: Juan Rivas (aka @r1vs3c)

# Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Global variables
dir=$(pwd)
fdir="$HOME/.local/share/fonts"
user=$(whoami)

trap ctrl_c INT

function ctrl_c(){
    echo -e "\n\n${redColour}[!] Exiting...\n${endColour}"
    sudo apt-get -y install
}

function banner(){
    echo -e "\n${turquoiseColour}              _____            ______"
    sleep 0.05
    echo -e "______ ____  ___  /______      ___  /___________________      ________ ___"
    sleep 0.05
    echo -e "_  __ \`/  / / /  __/  __ \     __  __ \_  ___/__  __ \_ | /| / /_  __ \`__ \\"
    sleep 0.05
    echo -e "/ /_/ // /_/ // /_ / /_/ /     _  /_/ /(__  )__  /_/ /_ |/ |/ /_  / / / / /"
    sleep 0.05
    echo -e "\__,_/ \__,_/ \__/ \____/      /_.___//____/ _  .___/____/|__/ /_/ /_/ /_/    ${endColour}${yellowColour}(${endColour}${grayColour}By ${endColour}${purpleColour}@r1vs3c${endColour}${yellowColour})${endColour}${turquoiseColour}"
    sleep 0.05
    echo -e "                                             /_/${endColour}"
}

if [ "$user" == "root" ]; then
    banner
    echo -e "\n\n${redColour}[!] You should not run the script as the root user!\n${endColour}"
    sudo apt-get -y install
else
    banner
    sleep 1
    echo -e "\n\n${blueColour}[*] Installing necessary packages for the environment...\n${endColour}"
    sleep 2
       sudo apt install bspwm -y
sudo apt install -y sxhkd
 sudo apt install -y polybar rofi ranger nemo xdg-user-dirs xdg-user-dirs-gtk
xdg-user-dirs-update
xdg-user-dirs-gtk-ypdate

    sudo apt install -y kitty rofi feh xclip ranger i3lock-fancy scrot scrub maim ffpmeg wmname imagemagick  htop neofetch python3-pip procps tty-clock fzf lsd bat pamixer flameshot
    if [ $? != 0 ] && [ $? != 130 ]; then
        echo -e "\n${redColour}[-] Failed to install some packages!\n${endColour}"
        sudo apt-get -y install
    else
        echo -e "\n${greenColour}[+] Done\n${endColour}"
        sleep 1.5
    fi
 
    echo -e "\n${blueColour}[*] Starting installation of necessary dependencies for the environment...\n${endColour}"
    sleep 0.5

    echo -e "\n${purpleColour}[*] Installing necessary dependencies for bspwm...\n${endColour}"
    sleep 2
    sudo apt install -y build-essential git vim libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev
sudo apt install -y libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev curl wget git yad zenity
ascii 
    if [ $? != 0 ] && [ $? != 130 ]; then
        echo -e "\n${redColour}[-] Failed to install some dependencies for bspwm!\n${endColour}"
        sudo apt-get -y install
    else
        echo -e "\n${greenColour}[+] Done\n${endColour}"
        sleep 1.5
    fi

    echo -e "\n${purpleColour}[*] Installing necessary dependencies for polybar...\n${endColour}"
    sleep 2
    sudo apt install -y cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev 
sudo apt install -y libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev
sudo apt install -y libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
sudo apt-get -y install xorg xserver-xorg xbacklight xbindkeys xvkbd xinput build-essential make git policykit-1-gnome
sudo apt-get -y install network-manager network-manager-gnome pamixer nemo gvfs file-roller lxappearance dialog mtools
sudo apt-get -y install dosfstools avahi-daemon gvfs-backends gnome-power-manager net-tools
sudo apt-get -y install pulseaudio pavucontrol pamixer pulsemixer maim udiskie udisks2 exa scrot
sleep 50
sudo apt update
sudo apt-get -y install rofi uxplay libnotify-bin xdotool unzip zip libnotify-dev geany-plugins
sudo apt-get -y install geany vlc kitty alacritty lolcat rxvt-unicode zenity yad dex cmus arc-theme
sudo apt-get -y install ascii toilet toilet-fonts figlet wget curl sxhkd polybar suckless-tools airmon-ng
sudo apt-get -y install jq yq ffmpeg lz4 notepadqq dos2unix w3m gvfs-fuse wmctrl brightnessctl python3-pip
sudo apt-get -y install playerctl mstools mpc imagemagick p7zip-full cmake-extras smartmontools libjpeg-dev
sudo apt-get -y install autoconf automake lsd cava font-downloader font-manager font-manager-common procps
sudo apt-get -y install fontconfig fzf libsecret-1-0 thefuck util-linux gcc bc libxcb-xrm-dev libxkbcommon-x11-dev 
sleep 50
sudo apt update
sudo apt-get -y install pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev fif0 libxkbcommon-dev xclip ttyoclock papirus-icon-theme
sudo apt-get -y install libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev 
sudo apt-get -y install ripgrep ffmpegthumbnailer exiftool mcomix fonts-recommended fonts-font-awesome fonts-terminus fonts-noto fonts-oxygen
sudo apt-get -y install build-essential git im libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev
sudo apt-get -y install libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev python3 python3-dev python3-pip scrub airmon-ng debconf netselect dconf-editor ipcalc calcurse cmus
sleep 50
sudo apt update
sudo apt-get -y install meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev 
sudo apt-get -y install libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev 
sudo apt-get -y install libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev
sudo apt-get -y install libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev
sudo apt-get -y install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev 
sudo apt-get -y install libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev
sudo apt-get -y install libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
sleep 50
sudo apt update




sudo apt-get -y install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev \
  libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev \
  libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev brightnessvtl \
  libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev playerctl \
  libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev ffmpeg xorg xserver-xorg-video-intel \
  menu suckless-tools acpid avahi-daemon fontconfig bspwm geany vlc rofi gsimplecal tint2 uxplay \
  nitrogen neofetch rxvt-unicode ttf-ubuntu-font-family fonts-material-design-icons-webfont \
  fonts-hack-ttf policykit-1-gnome dmenu viewnior lxappearance dex  yad zenity kitty \
  alacritty lolcat ascii figlet toilet toilet-fonts dos2unix lxappearance-obconf qt5-style-plugins \
  qt5ct alsa-utils pulseaudio pavucontrol lm-sensors lz4 fonts-material-design-icons-iconfont \
  materia-gtk-theme arc-theme papirus-icon-theme fonts-noto-hinted fonts-noto-mono \
  fonts-roboto fonts-hack-ttf neomutt abook ranger newsboat scrot mpd mpc ncmpcpp \
  suckless-tools sxhkd xbacklight mpv youtube-dl imagemagick libnotify-bin taskwarrior w3m \
  zathura dtrx rsync i3lock lxappearance fonts-font-awesome libdbus-1-dev libx11-dev libxinerama-dev \
  libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk2.0-dev libxdg-basedir-dev gcc \
  make autotools-dev pkg-config xdm cmus libxml2-dev libxcb-randr0 libxcb-ewmh-dev libstartup-notification0-dev \
  libxcb-icccm4-dev libxcb-keysyms1-dev geany-plugins polybar xorg xserver-xorg xbacklight gvfs udiskie \
  udisks fonts-recommended fonts-terminus papirus-icon-theme pavucontrol pulseaudio xbindkeys \
  gvfs-backends mtools acpid acpi xvkbd network-manager zip unzip avahi-daemon xinput \
  build-essential network-manager-gnome git curl wget  maim libnotify-bin xdotool \
  gtk2-engines gtk2-engines-murrine git gcc gettext automake autoconf autopoint libtool \
  libpango1.0-dev pkg-config libglib2.0-dev libxml2-dev libstartup-notification0-dev xorg-dev \
  libimlib2-dev build-essentials lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings \
 libpam0g-dev libcairo2-dev libfontconfig1-dev mpdris2 hseroot jq thefuck xclip \
 libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev \
 libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev \
 libxkbcommon-x11-dev libjpeg-dev
# Update the package list
sudo apt-get update
wait



    echo -e "\n${purpleColour}[*] Installing necessary dependencies for picom...\n${endColour}"
    sleep 2
    sudo apt install -y meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev 
sudo apt install -y libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev
sudo apt install -y libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev
sudo apt install -y libx11-xcb-dev libxcb-glx0-dev
    if [ $? != 0 ] && [ $? != 130 ]; then
        echo -e "\n${redColour}[-] Failed to install some dependencies for picom!\n${endColour}"
        sudo apt-get -y install
    else
        echo -e "\n${greenColour}[+] Done\n${endColour}"
 
 

    echo -e "\n${purpleColour}[*] Installing picom...\n${endColour}"
    sleep 2
    git clone https://github.com/ibhagwan/picom.git
    cd picom
    git submodule update --init --recursive
    meson --buildtype=release . build
    ninja -C build
    sudo ninja -C build install
    if [ $? != 0 ] && [ $? != 130 ]; then
        echo -e "\n${redColour}[-] Failed to install picom!\n${endColour}"
        sudo apt-get -y install
    else
        echo -e "\n${greenColour}[+] Done\n${endColour}"
        sleep 1.5
    fi

    cd

    echo -e "\n${purpleColour}[*] Setting up dotfiles...\n${endColour}"
    sleep 2
    if [ ! -d ~/.config ]; then
        mkdir ~/.config
    fi

    cd ~/.config
    git clone https://github.com/r1vs3c/dotfiles.git
    cd dotfiles
    cp -r .config/* ~/.config/

    echo -e "\n${greenColour}[+] Dotfiles set up\n${endColour}"
    sleep 1.5

    echo -e "\n${purpleColour}[*] Installing Nerd Fonts...\n${endColour}"
    sleep 2
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
    unzip Hack.zip
    fc-cache -fv

    echo -e "\n${greenColour}[+] Nerd Fonts installed\n${endColour}"
    sleep 1.5

    echo -e "\n${purpleColour}[*] Configuring bash as the default shell...\n${endColour}"
    chsh -s /bin/bash

    echo -e "\n${greenColour}[+] Bash configured as the default shell\n${endColour}"
    sleep 1.5

    echo -e "\n${yellowColour}[*] All done! Reboot your system to apply the changes.${endColour}\n"
fi
# Install LightDM and greeters
sudo apt-get -y install lightdm lightdm-gtk-greeter slick-greeter


# Configure Slick Greeter to display usernames
sudo sed -i 's/^#greeter-hide-users=false/greeter-hide-users=false/' /etc/lightdm/lightdm.conf

# Set bspwm as the default session
echo "[Seat:*]
user-session=bspwm
greeter-session=slick-greeter" | sudo tee /etc/lightdm/lightdm.conf.d/20-defaults.conf

echo -e "\n${greenColour}[+] Slick Greeter installed and configured with bspwm as the default desktop environment.${endColour}"
