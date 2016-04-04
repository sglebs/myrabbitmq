Use this project to install a rabbitmq and its management web in your dokku install. 
We assume dokku is at 127.0.0.1.nip.io


Installing
==========
```
git clone git@github.com:sglebs/rabbitmq.git
cd rabbitmq
git remote add dokku dokku@127.0.0.1.nip.io:rabbitmq
dokku apps:create rabbitmq
dokku docker-options:add rabbitmq deploy "-p 80:15672"
dokku docker-options:add rabbitmq deploy "-m 256m"
git push dokku
```

Using
======
http://rabbitmq.127.0.0.1.nip.io should work.
Otherwise you need to use http://rabbitmq.127.0.0.1.nip.io:15672