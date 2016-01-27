
myapp=$1
util=$2
~/images/2rtxen_full_run.sh 1 2
sleep 10
ssh 192.168.122.67 '/usr/bin/screen -d -m -S test'
ssh 192.168.122.67 '/usr/bin/screen -S test -p 0 -X stuff "~/experiment-scripts/rerun.sh $(printf \\r)"'
echo "done  67"
date
sleep 10
ssh 192.168.122.80 '/usr/bin/screen -d -m -S test'
ssh 192.168.122.80 '/usr/bin/screen -S test -p 0 -X stuff "~/experiment-scripts/reboot_rerun.sh '"$myapp"' '"$util"' $(printf \\r)"'
echo "done 80"
sleep 1000
date
ssh 192.168.122.67 'pkill myapp'
echo $myapp
echo $util
sleep 10
xl shutdown 2
xl shutdown 1
sleep 80
reboot

