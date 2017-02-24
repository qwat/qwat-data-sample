# qwat-data-sample

The repository holds data samples for the qWAT water distribution management project

 - qwat_v1.2.0_data_only_sample.backup : a data only backup, to be used after using init script 
 - qwat_v1.2.0_data_and_structure_sample.backup : a full backup with data and structure.


Usage:

- create a new database named qwat, and initialise postgis and hstore extension
```
psql -U postgres -c 'create database qwat;'
psql -U postgres -d qwat -c 'create extension postgis;'
psql -U postgres -d qwat -c 'create extension hstore;'
```

CASE 1 - If you developp or customize the data model, you need to rebuild the DB from the sources:

    - first, initialize th DB structure using the procedure described here https://github.com/qwat/QWAT/blob/master/README.rst

    - Then restore the data only file qwat_v1.2.0_data_only_sample.backup using pgadmin or with command below:

    ```
        pg_restore --dbname qwat --jobs=3 --data-only --disable-triggers  --no-owner --port 5432 qwat_v1.2.0_data_only_sample.backup
    ```
    
    
CASE 2 - you can also restore a full standalone database

    ```
        pg_restore --dbname qwat --jobs=3 --disable-triggers  --no-owner --port 5432 qwat_v1.2.0_data_and_structure_sample.backup
    ```

- now open the qgis project **qwat.qgs** from the main qwat repository (https://github.com/qwat/QWAT/tree/master/qgis-project)
and you should see this screen:

![qwat-demo](qgis.png)

- 
