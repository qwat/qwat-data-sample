# qwat-data-sample

This is a data sample for the qWAT water distribution management project

How to test this dataset :

- create a new database named qwat
- restore the file 201600302_plain_qwat.backup using pgadmin or with command below:

    psql -d qwat -f 201600302_plain_qwat.backup

- now open the qgis project **qwat.qgs** from the main qwat repository (https://github.com/qwat/QWAT/tree/master/qgis-project)
and you should see this screen after loading qgis.qgs

![qwat-demo](qgis.png)
