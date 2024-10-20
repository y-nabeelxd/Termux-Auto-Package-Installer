#!/system/bin/sh
clear
echo " "
echo -e "\e[1m\e[33m============================================\e[21m"
echo " "
echo -e "\e[33m [\e[1m\e[32mTermux Package\e[21m\e[31m Installer\e[33m]"
echo " "
echo -e "\e[1m\e[33m============================================\e[21m"
sleep 3
clear
echo -e "\e[1m\e[33m============================================\e[21m"
echo " "
echo -e "\e[33m Creator: \e[36mNABEEL XD\e[33m"
echo " "
echo -e "\e[1m\e[33m••••••••••••••••••••••••••••••••••••••••••••\e[21m"
echo " "
sleep 3
clear
echo -e "\e[92m "
read -r -s -p $'Press enter to continue...\n'
clear
echo -e "\e[1m\e[33m••••••••••••••••••••••••••••••••••••••••••••\e[21m"
echo " "
sleep 1
echo -e "\e[92mChecking Packages For Installation..."
echo " "
echo -e "\e[1m\e[33m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\e[21m"
sleep 2
echo " "
clear

install_package() {
    package_name=$1
    dpkg -s $package_name &> /dev/null
    if [ $? -eq 0 ]; then
        echo " "
        echo -e "\e[92m • already $package_name installed ✅"
        echo " "
    else
        echo " "
        echo -e "\e[31m • Installing $package_name..."
        echo " "
        sleep 1
        pkg install $package_name -y
        echo " "
        echo -e "\e[92m • $package_name installed ✅"
        echo " "
    fi
    sleep 1
}

packages=("git" "python" "python2" "curl" "perl" "ruby" "php" "bash" "clang" "nano" "zip" "unzip" "wget" "openssl" "openssh" "sl" "zsh" "nodejs" "ffmpeg" "w3m")

for pkg in "${packages[@]}"; do
    install_package $pkg
done

clear
echo -e "\e[92mAll necessary packages have been installed."
