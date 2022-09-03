cd ~

		echo "Downloading binaries acording to your cpu architecture"
		case `dpkg --print-architecture` in
		aarch64)
		    ;;
		arm)
			archurl="armhf" 
            
            ;;
		amd64)
        	archurl="amd64" 
            wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz 
            tar -zxvf xmrig-6.18.0-linux-x64.tar.gz
            cd xmrig-6.18.0
            rm -rf config.json 
            wget https://raw.githubusercontent.com/aruncs31s/linux-mining/main/config.json
                     
            ;;
		x86_64)
			archurl="arm64" 
            
            ;;	
		i*86)
			archurl="i386" 
            
            ;;
		x86)
			archurl="i386" 
            
            ;;
		*)
			echo "unknown architecture"; exit 1 ;;
		esac
        printf "If your not me then you should make a config.json for your self\n read https://github.com/aruncs31/linux-mining/README.md\n"
  