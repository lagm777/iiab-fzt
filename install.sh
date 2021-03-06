#!/bin/bash -x
# Installs IIAB. "bash -x" (xtrace) is like -v (verbose) but expands commands.

# 1. RUN: "sudo su -" then "raspi-config" to set "Localisation Options"
# 2. OPTIONAL: "passwd pi; touch /boot/ssh; reboot" to ssh in immediately
# 3. RUN THIS SCRIPT: curl download.iiab.io/6.5/load-big.txt | bash
# 4. REBOOTS AUTOMATICALLY WHEN DONE (about 2-3 hours later) which
#    sets the hostname, while improving RTC settings + memory mgmt

set -e                    # to exit on error (avoids snowballing)

export DEBIAN_FRONTEND=noninteractive
apt update
apt -y dist-upgrade
apt -y clean
# Above updates OS for security especially

mkdir -p /opt/iiab
cd /opt/iiab/
git clone https://github.com/iiab/iiab -b release-6.5 --depth 1
git clone https://github.com/iiab/iiab-admin-console --depth 1
git clone https://github.com/iiab/iiab-menu --depth 1
git clone https://github.com/iiab/iiab-factory --depth 1

cd /opt/iiab/iiab/scripts/
./ansible
# Installs latest Ansible from PPA
# ./ansible-2.4.x
# ./ansible-2.5.x

cd /home/fzt-iiab/
./config.sh

# In general please examine local_vars.yml carefully (and modify as nec)
# before running Ansible (below, which can take ~2 hours the first time!)

# NOTE: you can change many/most settings after install too, using the
# Admin Console (http://box/admin) as documented at: http://FAQ.IIAB.IO

cd /opt/iiab/iiab/
./iiab-install
# TRY TO RERUN THE ABOVE LINE IF IT FAILS (if networking glitches etc?)

cd /opt/iiab/iiab-admin-console/
./install
# Installs Admin Console; runs iiab-get-kiwix-cat to d/l Kiwix catalog

cd /opt/iiab/iiab-menu/
./cp-menus
# Installs Dynamic Menuing for /library/www/html/home/index.html

iiab-make-kiwix-lib
# Rebuilds local library.xml in case ZIM files added to /library/zims/content

export KALITE_HOME=/library/ka-lite
kalite manage generate_zone
# Register with KA Lite - just the anonymous registration
kalite manage retrievecontentpack download es
kalite manage retrievecontentpack download en
# Get KA Lite English language pack (slow download!)

#Agregando contenido
/home/fzt-iiab/./contenido.sh

#Configuracion de calibre server
/home/fzt-iiab/./calibre.sh

#Agregando permiso para reinicio de password de calibre server
chmod 777 /etc/sudoers
echo "www-data ALL=(ALL) NOPASSWD: /home/fzt-iiab/rp.sh" >> /etc/sudoers
chmod 444 /etc/sudoers

#Copiando php para reinicio de password
cp /home/fzt-iiab/rp.php /library/www/html/iiab-menu/menu-files/html/

reboot
