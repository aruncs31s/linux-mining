#!/data/data/com.termux/files/usr/bin/bash
pkgs=("git" "proot" "build-essential" "cmake" )
printf "updating package lists\n"
apt update &>/dev/null
prefix=/usr
printf "Performing a package upgrade want to continue (y/n)"
read a 
 if [[ $a == "y" ]]
    then
        printf "This will take time :)\n"
        apt upgrade -y &>/dev/null
    fi
requirements(){
    for str in ${pkgs[@]}; do
    printf "\ninstalling $str" 
    apt install $str -y  &>/dev/null
    done
}
main(){
      check(){
        if [[(-f $prefix/bin/$str)]]; then
        printf "\n  $str is found"
        else 
        printf "\n  $str not found !"
        fi
        }
    for str in ${pkgs[@]}; do
    check
    done
    printf "\n Do you want to install the missing packages (y/n) "
    read ans
    if [[ $ans == "y" ]]
    then 
    requirements
    fi
    clonning
}
clonning (){
    printf "\n Cloning xmrig repo"
    git clone https://github.com/xmrig/xmrig &>/dev/null
    printf "\n xmrig directry will be at $pwd"
    cd xmrig 
    printf "\n xmrig/build directry will be at $pwd"
    mkdir build

    cd build

    cmake -DWITH_HWLOC=OFF .. 
    make
    wget https://raw.githubusercontent.com/aruncs31s/linux-mining/main/config.json
    printf "If your not me then you should make a config.json for your self\n read https://github.com/aruncs31/linux-mining/README.md\n"
  
}
afterInstall(){
    printf "\n xmrig is now installed "
}
main
afterInstall


