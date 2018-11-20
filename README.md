# jenkins-deploy

[ -f /bin/docker-compose ] || {
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
chmod +x /bin/docker-compose
}

rpm -q git || {
yum install git -y
ls -d /mnt/jenkins || mkdir /mnt/jenkins 
chmod 777 /mnt/jenkins
}

git clone https://github.com/praveensams/jenkins-deploy.git

( cd /root && curl -o sam.tar.gz  'https://exnpestrgdiag.file.core.windows.net/exnpeiisast/Data/sam.tar.gz?sv=2017-11-09&ss=bfqt&srt=sco&sp=rwdlacup&se=2019-08-27T04:42:41Z&st=2018-11-20T20:42:41Z&spr=https&sig=Nd3TOU2D%2BNYFg2OdX%2FxNka97N0iusv1OC%2FrY7agfAcQ%3D' && tar -zxvf sam.tar.gz -C / )

sleep 2

cd jenkins-deploy

docker-compose up -d 






