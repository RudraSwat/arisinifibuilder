------------
mkeznixOS
------------

The mkeznixos script and support files let you take a freshly installed Debian 10 Buster Xfce desktop to the eznixOS system. The functions are presented in a simple to use menu and the steps are in logical order. The process begins by copying the support files in the mkeznixOS folder to the /usr/share/ directory and makes the support files available to the script as those files are needed. Support files include a pre-built sources.list file with the contrib and non-free sections included. Support files also include a small collection of background images that are copied into the /usr/share/images/desktop-base/ directory so they are available when you select wallpapers. The deb-multimedia.org keyring package is supplied, along with its sha256sum signature to verify its integrity. The hplip folder contains the hplip plugin that some HP printers need during setup. All the files can and should be examined before use to verify that the mkeznixos tool operates openly and transparently.

The choice to add the deb-multimedia.org repositories should be considered IF you are experiencing some lack of multimedia capability. The stock multimedia software from the standard Debian repositories is very capable on its own and should suffice in most cases. If you add the deb-multimedia.org repository, the packages will replace selected packages with differently compiled versions that may or may not add extra features and capabilities. Once the deb-multimedia.org versions are installed, all future updates to packages installed from that repository will come from deb-multimedia.org. Care must be taken if you wish to upgrade to Testing or beyond. Visit the http://deb-multimedia.org/ website for guidance in this situation.

eznix
Version: 20200927

--------------------
Functions:
--------------------

A) Copy mkeznixOS support files:
cp -r mkeznixOS /usr/share/
cp /usr/share/mkeznixOS/mkeznixos /usr/local/bin/
cp /usr/share/mkeznixOS/backgrounds/* /usr/share/images/desktop-base/

B) Optimize sources.list:
cp /usr/share/mkeznixOS/sources/sources.buster /etc/apt/sources.list
apt-get -y update
apt-get -y dist-upgrade

C) Install aditional software:
apt-get -y install haveged less orage gdebi galculator grsync psensor synaptic gparted bleachbit flac faad faac mjpegtools x265 x264 mpg321 ffmpeg streamripper sox mencoder dvdauthor twolame lame asunder aisleriot gnome-mahjongg gnome-chess dosbox filezilla libxvidcore4 vlc obs-studio soundconverter hplip-gui cdrdao frei0r-plugins htop jfsutils xfsprogs ntfs-3g cdtool mtools gthumb gimp clonezilla testdisk numix-gtk-theme greybird-gtk-theme breeze-icon-theme breeze-gtk-theme xorriso cdrskin p7zip-full p7zip-rar keepassx hardinfo inxi gnome-disk-utility simplescreenrecorder thunderbird chromium simple-scan remmina arc-theme gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-plugins-good gnome-system-tools dos2unix dialog papirus-icon-theme transmission-gtk handbrake handbrake-cli audacity python-glade2 rar unrar cifs-utils fuse gvfs-fuse gvfs-backends gvfs-bin pciutils squashfs-tools syslinux syslinux-common dosfstools isolinux live-build fakeroot linux-headers-amd64 lsb-release menu build-essential dkms curl wget iftop apt-transport-https dirmngr nvidia-detect openvpn network-manager-openvpn openvpn-systemd-resolved libqt5opengl5 zulumount-gui zulucrypt-gui zulupolkit neofetch xscreensaver firmware-linux firmware-linux-nonfree firmware-misc-nonfree firmware-realtek firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-ipw2x00 firmware-intelwimax firmware-iwlwifi firmware-libertas firmware-netxen firmware-zd1211 gnome-nettool guvcview

D) Install Broadcom WiFi drivers and firmware:
apt-get -y install b43-fwcutter firmware-b43-installer firmware-b43legacy-installer 

E) Add deb-multimedia.org (only if needed):
cp /usr/share/mkeznixOS/sources/deb-multimedia.list /etc/apt/sources.list.d/deb-multimedia.list
dpkg -i /usr/share/mkeznixOS/mmedia/deb-multimedia-keyring_2016.8.1_all.deb
apt-get -y update

F) Run multimedia dist-upgrade (optional):
apt-get -y update
apt-get -y dist-upgrade

G) Install youtube-dll:
curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/bin/youtube-dl
chmod a+rx /usr/bin/youtube-dl

H) Enable Systemd-Resolved DNS Cache:
systemctl enable systemd-resolved.service
systemctl start systemd-resolved.service
ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

J) Install newest kernel from backports:
apt-get -y install -t buster-backports linux-image-amd64 linux-headers-amd64
apt-get -y install -t buster-backports firmware-linux firmware-linux-nonfree firmware-misc-nonfree
apt-get -y install -t buster-backports firmware-realtek firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-ipw2x00 firmware-intelwimax firmware-iwlwifi firmware-libertas firmware-netxen firmware-zd1211


-------------------
Files:
-------------------

sources.buster:

# Main
deb http://deb.debian.org/debian/ buster main contrib non-free
# deb-src http://deb.debian.org/debian/ buster main contrib non-free

# Updates
deb http://deb.debian.org/debian/ buster-updates main contrib non-free
# deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free

# Security
deb http://deb.debian.org/debian-security buster/updates main contrib non-free
# deb-src http://deb.debian.org/debian-security buster/updates main contrib non-free

# Backports
deb http://ftp.debian.org/debian buster-backports main contrib non-free
# deb-src http://ftp.debian.org/debian buster-backports main contrib non-free

--------------------

deb-multimedia.org:

deb http://www.deb-multimedia.org buster main non-free

--------------------

