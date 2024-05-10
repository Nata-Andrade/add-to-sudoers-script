#!/bin/bash

if [ ! -e /etc/sudoers ]
then
	echo '/etc/sudoers doesnt exists'
	exit 1
fi

if [ $# -eq 0 ]
then
	echo 'username argument not provided'
	exit 1
fi

for user in $@
do
	printf '%s\tALL=(ALL:ALL) ALL\n' $user >>/etc/sudoers
done
