# jenkins-deploy

[ -f /bin/docker-compose ] || {
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
chmod +x /bin/docker-compose
}

rpm -qa | grep -i git || {
yum install git -y
ls -d /mnt/jenkins || mkdir /mnt/jenkins 
chmod 777 /mnt/jenkins
}

git clone https://github.com/praveensams/jenkins-deploy.git

cd jenkins-deploy

docker-compose up -d 
