#!/bin/bash
data=`awk -F' ' '{print $NF}' /data/speedtest/speedtest.txt | tail -1`
#echo $data
#if [[ $data == *M ]]; then echo 'yes'; else echo 'no';fi
#if [[ $data == *M ]]; then echo TRUE; else echo FALSE;fi
if [[ $data == *M ]]; then
#       echo TRUE;
        newdata=`echo $data | tr -d '[:alpha:]'`;
        echo  $newdata*1000 | bc;
#       else echo FALSE;
else
        echo $data | tr -d '[:alpha:]';
#       newdata=`echo $data | tr -d '[:alpha:]'`;
#       echo  $newdata*1000 | bc;
fi
