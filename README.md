###### Download Magento 2.2 

From [Magento offical download page](https://magento.com/tech-resources/download), download with the .tar.gz extension
And save in the root folder, named it 'MagentoCE-22.tar.gz'
---
Download Magento before run 
´´´
$ vagrant up
$ vagrant ssh
´´´
---
After that
´´´
$ vagrant up
$ vagrant ssh
´´´
You now have your database and magento set. 
To secure your database, run the below command to set password for mysql root 
´´´
$ sudo mysql_secure_installation
´´´
When prompted, answer the questions below by following the guide.

Enter current password for root (enter for none): Just press Enter
Set root password? [Y/n]: Y
New password: Enter password
Re-enter new password: Repeat password
Remove anonymous users? [Y/n]: Y
Disallow root login remotely? [Y/n]: Y
Remove test database and access to it? [Y/n]:  Y
Reload privilege tables now? [Y/n]:  Y
