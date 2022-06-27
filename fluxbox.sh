#!/data/data/com.termux/files/usr/bin/sh
echo "Termux GUI installer (Fluxbox)"
cd
pkg install -y x11-repo
pkg install -y tigervnc fluxbox
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'fluxbox-generate_menu' >> ~/.vnc/xstartup
echo 'fluxbox &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
