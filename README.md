
### Dependencies:

###### Download Magento 2.2 

From [Magento offical download page](https://magento.com/tech-resources/download), download with the .tar.gz extension
and save it to ``` vagrant-box-with-magento ```

---
###### Download Magento before run 
```
$ vagrant up
$ vagrant ssh

```

You now have your database and magento set. 
To secure your database, run the below command to set password for mysql root 

```
$ mysql -u magento -p
```

###### Now you can login to mysql with ``` User: magento, Password: magento ```, which you can changed in bootstrap.sh

---

Now you can move to http://127.0.0.1:1180 or http://localhost:1180 and start setup 

---
###### Note

If the frontend is broken, run

```
cd /var/www/magento2ce
php bin/magento setup:static-content:deploy -f
```
You can find out how to install manual here:
* [How to install magento on Ubuntu](https://websiteforstudents.com/install-magento-ubuntu-17-04-17-10-apache2-mariadb-php/?)
