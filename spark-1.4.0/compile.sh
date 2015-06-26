#!/bin/bash
echo 'Compile and build Spark'

build/mvn -Pyarn -Phadoop-2.6 -Dhadoop.version=2.6.0 -DskipTests clean package

./make-distribution.sh --name custom-spark --tgz -Phadoop-2.6 -Pyarn

echo 'Completed compilation'
