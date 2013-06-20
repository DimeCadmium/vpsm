TGZ_URL="" # default link and stuff
PUBKEY_URL=""

set -e

if ! grep "vpsm" /etc/passwd >/dev/null 2>&1; then
	adduser -M -d /opt/vpsm/ -c "VPSM user" -s /opt/vpsm/shell vpsm
	mkdir /opt/vpsm
else
	rm -rf /opt/vpsm
	mkdir /opt/vpsm
fi

cd /opt/vpsm

if [ "$TGZ_URL" ]; then
	wget -O vpsm.tgz "$TGZ_URL"
else
	read -e -p "Save the node distribution as /opt/vpsm/vpsm.tgz and press enter..." somevar
fi
tar -xpzf vpsm.tgz
rm vpsm.tgz

mkdir /opt/vpsm/.ssh
if [ -z "$PUBKEY_URL" ]; then
	read -e -p "Type URL to VPSM's public key (or just press enter to not fetch): " PUBKEY_URL
fi
if [ "$PUBKEY_URL" ]; then
	wget -O - "$PUBKEY_URL" >>/opt/vpsm/.ssh/authorized_keys
fi

# Last step: chown/chmod
chown -R vpsm: /opt/vpsm
chmod 711 /opt/vpsm/
chmod 755 /opt/vpsm/shell
chmod 700 /opt/vpsm/.ssh/
chmod 600 /opt/vpsm/.ssh/authorized_keys
