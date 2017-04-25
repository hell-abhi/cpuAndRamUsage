#! /bin/bash

#Total RAM USAGE
TOTAL_RAM=`free -m | awk '{print $2}'| head -2 | tail -1`
#echo $TOTAL_RAM
 
#FRE RAM USAGE
FREE_RAM=`free -m | awk '{print $4}'| head -3| tail -1`
#echo $FREE_RAM
 
#expr $FREE_RAM - $TOTAL_RAM
FREE_PERCENT=$(( 100*FREE_RAM / TOTAL_RAM ))
USED_PERCENT=$(( 100-$FREE_PERCENT))
#echo "Percentage Used :" $USED_PERCENT

ram=`top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1"%"}'`
#echo $ram
#echo $USED_PERCENT          
user="root"
password="priya6355"
database="ps_cpu"
table="status"

max=` mysql --user="$user" --password="$password" --database="$database" --execute="SELECT MAX(Avg_CPU) FROM status" `
max2=` mysql --user="$user" --password="$password" --database="$database" --execute="SELECT MAX(Avg_RAM) FROM status" `

name=`hostname`
dat=`date`

#echo $max
#echo $max2
         
mysql --user="$user" --password="$password" --database="$database" --execute="INSERT INTO $table (Server,Date_and_Time,Avg_CPU,Avg_RAM,Peak_CPU,Peak_RAM) VALUES ( '$name' , '$dat' , '$USED_PERCENT' , '$ram' , '$max' , '$max2' ) ;"

