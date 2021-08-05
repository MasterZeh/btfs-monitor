#/bin/bash
set -x 

#Install sendmail and git
sudo apt-get install -y sendemail git

#Create folder
sudo mkdir -p /opt/btfs

#Set permissions
sudo chmod 777 /opt/btfs

#Create crontab
crontab -l > cronjob
echo "*/15 * * * * /opt/btfs/btfs-monitor/monitor.sh" >> cronjob
crontab cronjob

#Clone Repository
cd /opt/btfs/
git clone https://github.com/MasterZeh/btfs-monitor.git

#Set execute permission on monitor.sh
chmod u+x /opt/btfs/btfs-monitor/monitor.sh
