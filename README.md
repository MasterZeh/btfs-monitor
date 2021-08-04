# btfs-monitor

Short instructions of how to set it up:

Run the following:

#/bin/bash
set -x
#Install sendmail
sudo apt-get install -y sendemail

#Create folder
sudo mkdir -p /opt/btfs/btfs-monitor

#Set permissions
sudo chmod -R 777 /opt/btfs/btfs-monitor

#Create crontab
crontab -l > cronjob 
echo "*/15 * * * * /opt/btfs/btfs-monitor/monitor.sh" >> cronjob
crontab cronjob

Then git clone the repositories into /opt/btfs/btfs-monitor
git clone 

Edit hosts.txt with the hosts you will monitor
Note that btfs ping cannot ping itself. You'll have to setup another host to also monitor the own host.

Edit monitor.sh sendmail with:
    -f "from@mail.com"   \
    -u "Check Host $(echo $n| cut -d, -f2 )" \
    -t "to@mail.com" \
    -s "smtp.mail.com:587"  \
    -o tls=yes \
    -xu "logon-user-to@mail.com" \
    -xp "password" \
    -m  "Check Host $(echo $n| cut -d, -f2 )"

It's ready to go!
