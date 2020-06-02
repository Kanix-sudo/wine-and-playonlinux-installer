#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

echo "Witaj zanstaluje ci wine oraz playonlinux :) Wojtek Szyjka"

if $(uname -m | grep '64'); then
  dpkg --add-architecture i386 
    if $(cat /etc/os-release| grep 'focal');
        then
         add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/focal main';
        
    elif $(cat /etc/os-release| grep 'eoan');
        then
         add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/eoan main';
       
    elif $(cat /etc/os-release| grep 'bionic');
        then
          add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/bionic main';

    elif $(cat /etc/os-release| grep 'xenial');
        then
           add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/xenial main';
    else
        echo "Unsupported Operating System";
    fi
    
else

     if $(cat /etc/os-release| grep 'focal');
        then
         add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/focal main';
        
    elif $(cat /etc/os-release| grep 'eoan');
        then
         add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/eoan main';
       
    elif $(cat /etc/os-release| grep 'bionic');
        then
          add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/bionic main';

    elif $(cat /etc/os-release| grep 'xenial');
        then
           add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/xenial main';
    else
        echo "Unsupported Operating System";
    fi
    

fi
apt update
apt install --install-recommends winehq-stable -y

     if 
        $(cat /etc/os-release| grep 'focal');
        then
         apt install playonlinux;
        
    elif $(cat /etc/os-release| grep 'eoan');
        then
         apt install playonlinux;
       
    elif $(cat /etc/os-release| grep 'bionic');
        then
        wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
         wget http://deb.playonlinux.com/playonlinux_bionic.list -O /etc/apt/sources.list.d/playonlinux.list
         apt-get update
         apt-get install playonlinux -y;

    elif $(cat /etc/os-release| grep 'xenial');
        then
        wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
         wget http://deb.playonlinux.com/playonlinux_xenial.list -O /etc/apt/sources.list.d/playonlinux.list
         apt-get update
         apt-get install playonlinux -y;
    else
        echo "Unsupported Operating System";
    fi
    playonlinux
