# Tomcat - instalacao, permissao e incializacao do mesmo
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd ~
wget https://www.dropbox.com/s/1vqco3g57n9mpwf/apache-tomcat-8.0.28.tar.gz
sudo mkdir /opt/tomcat
sudo tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sudo chgrp -R tomcat conf
sudo chmod g+rwx conf
sudo chmod g+r conf/*
sudo chown -R tomcat work/ temp/ logs/ webapps/

cd /tmp
sudo wget --user=technosoftwarerp@gmail.com --password='/[technoRP780140]/' https://bitbucket.org/technosoftware/technosoftware-infraestrutura/raw/227d31112753e7f524ded2bc06a17a4c96f67fad/conf/tomcat.conf
dos2unix /tmp/tomcat.conf
sudo cp /tmp/tomcat.conf /etc/init
sudo initctl reload-configuration
sudo initctl start tomcat

