#declare -a Util=("8")
declare -a Util=("3.4" "3.6" "4.2" "4.4")
startdate=$(date)
iter=7
i=3
while [ $i -lt $iter ]; do
  for util in "${Util[@]}"
  do
    myapp="myapp""$i"
    echo $myapp
    echo $util
    ssh root@hp1 '/usr/bin/screen -d -m -S test'
    ssh root@hp1 '/usr/bin/screen -S test -p 0 -X stuff "/root/hyper_ovm/deepreboot.sh '"$myapp"' '"$util"' $(printf \\r)"'
    sleep 1600
  done 
echo "==="
i=$((i+1))
done


enddate=$(date)

echo "run bench start at:"
echo "$startdate"
echo "run bench done at:"
echo "$enddate" 

