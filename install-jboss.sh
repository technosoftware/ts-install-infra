# Jboss - instalacao, permissao e incializacao do mesmo
cd /tmp
sudo wget https://raw.githubusercontent.com/technosoftware/ts-install-infra/master/wildfly-install.sh
dos2unix /tmp/wildfly-install.sh

chmod 777 /tmp/wildfly-install.sh
sudo /bin/bash /tmp/wildfly-install.sh

sudo wget https://raw.githubusercontent.com/technosoftware/ts-install-infra/master/wildfly-init-debian.sh
sudo cp /tmp/wildfly-init-debian.sh /etc/init.d/wildfly
sudo chown root:root /etc/init.d/wildfly
sudo dos2unix /etc/init.d/wildfly
sudo /bin/bash /etc/init.d/wildfly

sudo rm -rf /tmp/wildfly-init-debian.sh
sudo rm -rf /tmp/wildfly-install.sh
