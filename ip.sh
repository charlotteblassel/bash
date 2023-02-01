#!/bin/bash
ip=10.93.160
for i in {1..255}
 do
 ping -c 1 "$ip.$i" > /dev/null
  if [ $? -eq 0 ];
   then echo $ip.$i >> online.txt
  else
   echo $ip.$i >> offline.txt
  fi
done
