#!/bin/bash

for users in $(occtl show users | grep vpns | awk {'print $2'} | sort | uniq -d); do
        # Save the username for checking by the server administrator
        echo -e "" >> /root/duplog.txt
        echo -e "-------------" >> /root/duplog.txt
        occtl show sessions all | grep $users >> /root/duplog.txt
        echo -e "-------------" >> /root/duplog.txt
        echo -e "" >> /root/duplog.txt

        # Disconnect user from server
        occtl disconnect user $users >> /root/duplog.txt
done;
