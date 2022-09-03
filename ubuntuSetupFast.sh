cd ~

		echo "Downloading binaries acording to your cpu architecture"
		case `dpkg --print-architecture` in
		aarch64)
			archurl="arm64" 
            wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz 
            tar -zxvf xmrig-6.18.0-linux-x64.tar.gz
            cd xmrig-6.18.0
            wget 

            ;;
		arm)
			archurl="armhf" 
            
            ;;
		amd64)

			archurl="amd64" 
            
            ;;
		x86_64)
			archurl="amd64" 
            
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