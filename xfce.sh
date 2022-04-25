#!/data/data/com.termux/files/usr/bin/bash
cd
echo "deb https://packages.termux.org/apt/termux-main stable main" >> $PREFIX/etc/apt/sources.list
echo "deb https://packages.termux.org/apt/termux-x11/ x11 main" >> $PREFIX/etc/apt/sources.list
pkg update 
pkg install -y tigervnc xfce4 xfce4-terminal netsurf
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'xfce4-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
