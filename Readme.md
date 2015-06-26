Spark
=====

##Initial Setup
Vagrant is a script-flavored wrapper for virtual machines. The out-of-the-box virtual machine is VirtualBox, so it needs to be installed before Vagrant.

```
$ sudo apt-get install virtualbox
$ sudo apt-get install vagran
```

Run the next command `$ vagrant up`. It will create a new Virtual Machine, and install Java and Spark 1.4.0.

The last step is to create the environment variables:

```
export SPARK_MASTER_IP= YOUR_IP # the IP address of the Master Node so that the Worker Nodes know where to connect to
export SPARK_WORKER_CORES=1
export SPARK_WORKER_MEMORY=800m
export SPARK_WORKER_INSTANCES=2
```
