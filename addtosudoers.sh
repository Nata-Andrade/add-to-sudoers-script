#!/bin/bash

if [ ! -e /etc/sudoers ]
then
	echo '/etc/sudoers doesnt exists'
	exit
fi

if [ $# -eq 0 ]
then
	echo 'username argument not provided'
	exit
fi

for user in $@
do
	printf '%s\tALL=(ALL:ALL) ALL\n' $user >>/etc/sudoers
done
