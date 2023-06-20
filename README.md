# packer-custom-ami-KaliLinux

This script creates custom Kali Linux AMI on AWS.
To build the AMI, first export the credentials as environment variables;

$ export AWS_ACCESS_KEY_ID="<your access key id"

$ export AWS_SECRET_ACCESS_KEY="<your secret key id>"
  
Edit main.json to specify your preferred AWS Region. 
  
Build with the command;
  
$ packer build main.json
  
After AMI creation, you will find the newly created AMI at the AMIs "Owned by me" at the AMI Section of AWS Console. The AMI ID is also printed at your terminal.
  
You can specify the AMI in Terraform or while created a new instance on console.
  
After the instance is created, first login through ssh and run the below command.
  
$ echo "kali:kali" | sudo chpasswd
  
Once done, you can access the kali from any RDP client using the Public DNS address. 
Username: kali
Password: kali
  
Once logged in with RDP, run the below command;
  
$ sudo dpkg-reconfigure wireshark-common
  
Choose 'Yes' to the interractive question that appears. And that's all. You can use the Kali Linux GUI.
  
Note that you can add any number of packages to the .sh file before building.
  
Enjoy!!!
