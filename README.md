# webapp-db - db migration scripts

| Name                | NUID      | Email                          |
| ------------------- | --------- | ------------------------------ |
| Ketki Kule          | 001549838 | kule.k@northeastern.edu        |
| Sandeep Wagh        | 001839964 | wagh.sn@northeastern.edu       |
| Vignesh Gunasekaran | 001029530 | gunasekaran.v@northeastern.edu |

resources.db.migration contains the ddl migration scripts

## Clean and build

```
mvn clean
mvn package
```

### Steps to build a docker image

Run the following command to build an image 

```
docker build -t dbscriptimg .
```

Add a tag to the image

```
docker tag dbscriptimg csye7125fall2022group03/dockrepo:dbscriptimg
```

Check if the image is built on local machine

```
docker images
```

Push the image to the docker repository

```
docker push csye7125fall2022group03/dockrepo:dbscriptimg
```
