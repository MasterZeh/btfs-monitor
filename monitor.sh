
set -x
export PATH=${PATH}:${HOME}/btfs/bin
export HOSTS=/opt/btfs/btfs-monitor/hosts.txt
export HOSTID=$(btfs id -f="<id>\n")

for n in $(cat $HOSTS)
do
MYOUT=$(btfs ping -n 1 $(echo $n| cut -d, -f1 ))
if [ $? -eq 1 ]
then
if [ "$HOSTID" != "$(echo $n| cut -d, -f1 )" ]
then
sendemail -l email.log     \
    -f "masterzeh@gmail.com"   \
    -u "Check Host $(echo $n| cut -d, -f2 )" \
    -t "masterzeh@gmail.com" \
    -s "smtp.gmail.com:587"  \
    -o tls=yes \
    -xu "masterzeh@gmail.com" \
    -xp "nxopuhluiehdtara" \
    -m  "Check Host $(echo $n| cut -d, -f2 )"
fi
fi
done

