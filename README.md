## Searchly Sample Java Application.

This example illustrates basic search features of Searchly.

Sample application is using [Jest](https://github.com/searchbox-io/Jest) Java Elasticsearch client to integrate with Searchly.

To create initial index and sample data click "Create Articles" (2 sample articles will be created.)

To test search; enter "epic", "Drizzt" or "*" to search box at top right and hit enter.


## Local Setup

Change value of "connectionUrl" to "http://localhost:9200" (Local Elasticsearch) at SpringConfiguration.java.

Type below maven command to run example in your local environment;

```
    mvn jetty:run
```

## Heroku Deployment

This sample can be deployed to Heroku with no change.

* Install SearchBox ElasticSearch Addon

* Deploy sample application and experience real time search.


## CloudFoundry Deployment

This sample uses CloudFoundry [maven plugin](http://spring.io/blog/2011/09/22/rapid-cloud-foundry-deployments-with-maven) for deployment.

* Install Searchly Service

* Edit CloudFoundry specific settings at pom.xml at cf-maven-plugin

* Execute below maven command to push CloudFoundry

```
    mvn cf:push
```

This command requires your CloudFoundry credentials. You can set them at Maven settings.xml or pass to push like;

```
    mvn cf:push -Dcf.username=abc@abc.c -Dcf.password=123456
```
