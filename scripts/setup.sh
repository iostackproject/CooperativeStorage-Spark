#!/bin/bash


# Setting ssh
if [ ! -f /home/vagrant/.ssh/id_rsa ]
then
	ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -P ""
	cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
fi


# Setting global environment variables
old_export=$(grep -n "export JAVA_HOME" /home/vagrant/.bashrc | cut -d : -f1 | sort -r)
for i in $old_export; do
	sed -i ""$i"d" /home/vagrant/.bashrc
done
echo "export JAVA_HOME='/usr/lib/jvm/java-6-openjdk-amd64'" >> /home/vagrant/.bashrc


# Setting spark environment variables
YOUR_IP=$(ip addr show eth1 | grep inet | grep -v inet6 | awk '{print $2}' | cut -d'/' -f1)
old_export=$(grep -n "export SPARK_LOCAL_IP" /home/vagrant/src/conf/spark-env.sh | cut -d : -f1 | sort -r)
for i in $old_export; do
	sed -i ""$i"s/.*/export SPARK_LOCAL_IP=$YOUR_IP/" /home/vagrant/src/conf/spark-env.sh
done


