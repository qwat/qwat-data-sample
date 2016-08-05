qwat-data-sample
----------------

This is a data sample for the qWAT water distribution management project

**How to test this dataset**

**1. Create a new database named qwat**

You can use the following commands:
```
psql -U postgres -c 'create database qwat;'
psql -U postgres -d qwat -c 'create extension postgis;'
psql -U postgres -d qwat -c 'create extension hstore;'
```

**2. Create the data model**

```
git clone https://github.com/qwat/qWat
git clone https://github.com/qwat/qwat-data-model
git clone https://github.com/qwat/qwat-data-sample

cd qwat-data-model && git submodule update --init --recursive
./init_qwat.sh -p qwat -s 21781 -d -r
```

You now have a clean data model (without sample data) + database roles.

**3. Create the *qwat* service in the ``.pg_service.conf`` file**

This is an optional step as you may already have the service defined.

You can use the following command in linux to do it.

```
echo "# Qwat service name
[qwat]
#enter your database ip
host=127.0.0.1
#database name
dbname=qwat
port=5432
user=postgres
#you can also add your password if you like
password=YourPassword" >> ~/.pg_service.conf 
```

If you just want to run the data model (without the sample data)
you can simply open the qwat.qgs project from the qWat directory.

**4. Restore the sample data**

Drop the existing data model.

```
cd ../qwat-data-sample
psql -U postgres -d qwat -c ' drop schema qwat_dr cascade;'
psql -U postgres -d qwat -c ' drop schema qwat_od cascade;'
psql -U postgres -d qwat -c ' drop schema qwat_sys cascade;'
psql -U postgres -d qwat -c ' drop schema qwat_vl cascade;'
```

Restore the sample data model  using pgadmin or with command below:

```
git remote add upstream https://github.com/tudorbarascu/qwat-data-sample
git pull upstream master

psql -U postgres -d qwat -f 201600302_plain_qwat.backup
```

**5. Open the qgis project**

You can open the **qwat.qgs** from the qwat-data-sample directory
and you should see this screen:

![qwat-demo](qgis.png)

Note that you can also try out the latest **qwat.qgs** project from the qWat directory
but there's a chance that it doesn't fit the sample data model.
