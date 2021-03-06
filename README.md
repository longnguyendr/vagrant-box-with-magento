### Description
This is another method to install and develop web application with magento framework on window environment

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
Run the below command to access mysql as new user 

```
$ mysql -u magento -p
```

###### Now you can login to mysql with ``` User: magento, Password: magento ```, which you can changed in VagrantBootstrap.sh

---

Now you can move to http://127.0.0.1:1180 or http://localhost:1180 and start setup 

---
###### Note

If the frontend is broken, run

```
cd /var/www/magento2ce
php bin/magento setup:static-content:deploy -f
```

### References
You can find out how to install manually without vagrant here:
* [How to install magento on Ubuntu](https://websiteforstudents.com/install-magento-ubuntu-17-04-17-10-apache2-mariadb-php/?)

Other Creators/Contributors:
* [Quynh Dao](https://github.com/siennad/vagrant-box-with-magento)
