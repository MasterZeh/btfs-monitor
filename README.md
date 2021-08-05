# btfs-monitor - Easy monitoring for your BTFS nodes
## Installation

Download file: 
```shell
cd ~ && wget https://raw.githubusercontent.com/MasterZeh/btfs-monitor/main/install-btfs-monitor.sh
```

change permissions to allow execution
```shell
chmod u+x install-btfs-monitor.sh
```
Run file. Note: it assumes you have sudo access within your user.
```shell
./install-btfs-monitor.sh
```

## Configuration
Edit the following files:
1. /opt/btfs/btfs-monitor/monitor.sh

Note: If using Gmail as on my example, you must setup the App Account:
https://support.google.com/a/answer/176600

Edit monitor.sh sendmail block with:
```shell
    -f "from@mail.com"   \
    -t "to@mail.com" \
    -xu "logon-user-to@mail.com" \
    -xp "password" \
```
All other fields are optional

2. /opt/btfs/btfs-monitor/hosts.txt

Edit hosts.txt with the hosts you will monitor. Remember to first add the HostID, then a host identification you you can easily reach it.

**Note that btfs ping cannot ping itself. You'll have to setup another host to also monitor the own host.**

It's ready to go!
