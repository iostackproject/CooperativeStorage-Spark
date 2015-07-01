#!/bin/bash


# Setting ssh
if [ ! -f /home/vagrant/.ssh/id_rsa ]
then
	ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -P ""
	cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
fi

# Setting environment variables
old_export=`grep -n "export JAVA_HOME" /home/vagrant/.bashrc | cut -d : -f 1 | sort -r` 

for i in $old_export; do
	sed -i ""$i"d" /home/vagrant/.bashrc
done

echo "export JAVA_HOME='/usr/lib/jvm/java-7-openjdk-amd64'" >> /home/vagrant/.bashrc

