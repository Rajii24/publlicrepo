run_ser=$(systemctl --state=running | grep 'running'| awk '{print $1}')
#echo $run_ser
for i in $(systemctl --state=running | grep 'running'| awk '{print $1}')
do
   mem=$(systemctl status $i | grep 'Memory' | awk -F ':' '{print $2}')
   echo $i $mem
done

