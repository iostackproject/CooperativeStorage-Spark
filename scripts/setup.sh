#!/bin/bash

old_export=`grep -n "export JAVA_HOME" ~/.bashrc | cut -d : -f 1 | sort -r` 

for i in $old_export; do
	sed -i ""$i"d" ~/.bashrc
done

echo "export JAVA_HOME='/usr/lib/jvm/java-7-openjdk-amd64'" >> ~/.bashrc

