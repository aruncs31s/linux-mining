apt update
apt upgrade -y
pkgs=("git" "proot" "build-essential" "cmake" )
 for str in ${pkgs[@]}; do
    printf "\ninstalling $str" 
    apt install $str -y  &>/dev/null
    done
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
  