# Arbitrary File Overwrite

The arbitrary file overwrite vulnerability is not very intuitive at the first glance. 
To explain this vulnerability, here is an attack scenario:

Package “frvr” logs to ```/tmp/frvr.log``` file, which is located in a shared directory. 
An evil user of the shared machine (without root privilege) could pre-create a symbolic 
link file ```/tmp/frvr.log``` pointing to ```/home/victim/.bashrc```. 
When the user (with id ```victim```) starts a Node.js application that loads “frvr”, 
the ```.bashrc``` file in his/her home directory will be overwritten. 
In a more severe case, when a root user executes the vulnerable package, 
the attacker could trash any file. Instead, logging to ```∼/frvr.log``` would be safer.
