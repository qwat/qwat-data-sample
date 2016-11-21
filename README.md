# qwat-data-sample

This is a data sample for the qWAT water distribution management project

How to test this dataset :

- create a new database named qwat
```
psql -U postgres -c 'create database qwat;'
psql -U postgres -d qwat -c 'create extension postgis;'
psql -U postgres -d qwat -c 'create extension hstore;'
```

- restore the file qwat_data_sample.backup using pgadmin or with command below:

    ```
    pg_restore --dbname qwat -e --no-owner --verbose --port 5432 qwat_data_sample.backup
    ```

- now open the qgis project **qwat.qgs** from the main qwat repository (https://github.com/qwat/QWAT/tree/master/qgis-project)
and you should see this screen:

![qwat-demo](qgis.png)
