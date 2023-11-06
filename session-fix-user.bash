#!/bin/bash

for users in $(occtl show users | grep unknown | awk {'print $1'}); do
        # disconnect user with status unknown
        occtl disconnect id $users
done;
