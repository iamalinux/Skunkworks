#receita para sistema com apps decentes/suporte crypto a partir de install Xubuntu 14.04.
sudo sed -i 's/# deb/deb/g' /etc/apt/sources.list
#remover as aplicações indesejáveis.
sudo apt-get update
sudo apt-get install -y linux-image-generic linux-headers-generic linux-firmware linux-tools-generic
#app purge commands are now segmented so that if one app is not allready uninstalled the script will still remove the rest.
sudo apt-get -y remove leafpad gnome-mplayer wamerican wbrazilian abiword* gnumeric* mono-gac parole gmusicbrowser zeitgeist* mousepad
sudo echo "sistema limo"
#actualizar o sistema todo e repôr o kernel (versão pae ou a 64bits que é mais segura e suporta mais de 4GB RAM.)
sudo apt-get -y upgrade
sudo apt-get clean && sudo echo "Sistema Actualizado"
#instalar the good stuff - core.
#definir como aceite o eula das fonts da ms para evitar a pausa extra na instalação
sudo echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true |sudo debconf-set-selections
sudo apt-get install -y libreoffice msn-pecan synaptic xul-ext-adblock-plus xul-ext-https-everywhere mc
#sudo apt-get install -y dia scribus inkscape gimp comix
#multimédia - playback
sudo apt-get install -y xubuntu-restricted-extras vlc browser-plugin-vlc exaile clementine
#Localization
sudo apt-get install -y libreoffice-l10n-pt libreoffice-l10n-en-gb language-pack-pt language-pack-en thunderbird-locale-pt thunderbird-locale-en-gb myspell-en-gb  myspell-pt-pt myspell-fr myspell-es
#crypto/comm/security tools
sudo apt-get install -y enigmail pidgin-otr cryptsetup debian-keyring mumble linphone
#ferramentas de sistema
sudo apt-get install -y usb-modeswitch gparted xz-utils gnome-disk-utility p7zip-full transcriber
#Ferramentas de criação de pens para propagação
sudo apt-get install -y unetbootin usb-creator-gtk
#Ferramentas de virtualização
sudo apt-get install -y testdrive kvm virt-manager
#	>>>>	virtualbox
#sudo apt-get install -y virtualbox virtualbox-guest-additions-iso virtualbox-dkms
#coding tools, mostly python.
#sudo apt-get install -y geany idle-python2.7 idle-python3.4 scite eclipse netbeans
#wine
sudo apt-get install -y wine winetricks playonlinux
sudo apt-get -y autoremove
sudo apt-get clean
sudo echo "Sistema Pronto"
