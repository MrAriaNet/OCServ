#!/bin/bash

echo -e "-------------"
echo "Apple User Online :" $(occtl show sessions all | grep Apple | wc -l)
echo "Android User Online :" $(occtl show sessions all | grep Android | wc -l)
echo "Windows User Online :" $(occtl show sessions all | grep Windows | wc -l)
#echo "Total User Online :" $(occtl show users | wc -l)
echo "Total User Online :" $(ip route | grep vpns | wc -l)
echo -e "-------------"
