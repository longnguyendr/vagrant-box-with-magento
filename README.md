
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
---

After that

```

$ vagrant up
$ vagrant ssh

```

You now have your database and magento set. 
To secure your database, run the below command to set password for mysql root 

```
$ mysql -u magento -p
```

###### Now you can login to mysql with ``` User: magento, Password: magento ```
---

Now you can come to http://127.0.0.1:1180 or http://localhost:1180 to start setup 

---
###### Note

If the frontend is messy, run

```
cd /var/www/magento2ce
php bin/magento setup:static-content:deploy -f
```

