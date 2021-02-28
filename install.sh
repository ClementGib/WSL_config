#!/bin/bash
#DEFAULT DEBIAN WSL config


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential -y


########################################################################
#	                   Install ZSH & VIM config		               #
########################################################################
# Zsh

echo zsh install
sudo apt-get install zsh -y -f
sh -c "$(curl -fsSL $ZSH)"
#cp config
sh zsh/fonts/install.sh 
cp -r zsh/.* ~/

echo ZSH : ~/.zsh >> locate.txt 



echo config vim :
#Config vim 
cp -a vim/.vim ~/
cp -a vim/.vimrc ~/
cp -a vim/.vimrc.plug ~/
		
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo VIM config : ~/.vim >> locate.txt 
sudo apt-get update -y
sudo apt-get upgrade -y


########################################################################
#	               CONFIG personal home user		       #
########################################################################

sudo ln -s /mnt/s ~/s
#Auto mount ?	
echo My Home config of $User is ready



########################################################################
#	                 Install essential build 	               #
########################################################################
echo install essential package:
sudo apt-get install automake -y -f
sudo apt-get install autoconf -y -f
sudo apt-get install libxmu-dev -y -f
sudo apt-get install libxi-dev -y -f
sudo apt-get install checkinstall -y -f
sudo apt-get install apt-transport-https -y -f
sudo apt-get install gpg -y
sudo apt-get install curl -y


sudo apt-get install software-properties-common -y

########################################################################
#	                      Install JAVA          	               #
########################################################################
#JAVA

sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
	
	# Installing JDK and JRE 11
	sudo apt install openjdk-11-jdk -y -f
	sudo apt install openjdk-11-jre -y -f
	sudo apt update


sudo apt-get update -y
sudo apt-get upgrade -y

fi
########################################################################
#	                 	C and C++ 		               #
########################################################################
#C and C++ 

echo install Cpp tools :
# Installing C compiler (include in g++)
#sudo apt-get install gcc
# Installing C++ compiler
sudo apt-get install g++ -y -f


########################################################################
#	      		        Python		             	       #
########################################################################

sudo apt-get install python-pip -y -f
sudo apt-get install python3-pip -y -f
sudo apt-get install idle -y -f
sudo apt-get install curl python-software-properties -y -f
sudo apt update -y
sudo apt upgrade -y
	
########################################################################
#	                 	   NODEJS                               #
########################################################################

#Nodejs
curl -fsSL https://deb.nodesource.com/setup_15.x | bash -
apt-get install -y nodejs


########################################################################
#	                       Cryptography			       #
########################################################################
echo install cryptography libs :
sudo apt-get install libssl-dev -y -f
sudo apt-get install libffi-dev -y -f
sudo apt-get install dirmngr -y -f
sudo apt-get install apt-transport-https -y -f
sudo apt-get install gnupg -y -f
	
#with Python
sudo pip install cryptography -y
echo cryptography libs installed -y
sudo apt-get update -y
sudo apt-get upgrade -y

echo no cryptography libs -y

########################################################################
#	                 	usefull Libs 	                       #
########################################################################
# Installing libs 
sudo apt-get install libgl1 -y -f
sudo apt-get install libgl1-mesa-dev -y -f
sudo apt-get install lib32ncurses5-dev -y -f
sudo apt-get install lib32z1-dev -y -f
sudo apt-get install lib32stdc++6 -y -f

echo OPENGL and lib32 installed
sudo apt-get update -y
sudo apt-get upgrade -y

########################################################################
#	                  Install usefull tools 	               #
########################################################################
#Some random useful stuff

echo Install tools!!!!!!!!!!!!!!!!!!!
sudo apt-get install terminator -y -f
sudo apt-get install gparted -y -f
sudo apt-get install w3m -y -f
sudo apt-get install git -y -f
sudo apt-get install xclip -y -f
sudo apt-get install locate -y -f
sudo apt-get install find -y -f
sudo apt-get install net-tools -y -f
sudo apt-get install check -y -f
sudo apt-get install flex -y -f
sudo apt-get install aptitude -y -f
sudo apt-get install net-tools -y -f
sudo apt-get install curl -y -f
sudo apt-get install ethtool -y -f

sudo apt-get update -y
sudo apt-get upgrade -y


########################################################################
#	                 Install Archive extractors	               #
########################################################################
#Archive Extractors  
echo Install archive extractor	
# Archive Extractors
sudo apt-get install unace -y -f
sudo apt-get install unrar -y -f
sudo apt-get install zip -y -f
sudo apt-get install unzip -y -f
sudo apt-get install p7zip-full	-y -f

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y
