[![Maintainability](https://api.codeclimate.com/v1/badges/e1937d4dcf1cfc2f07d1/maintainability)](https://codeclimate.com/github/danielyinanc/notejam-spring-gradle/maintainability)
[![Build Status](https://travis-ci.org/danielyinanc/notejam-spring-gradle.svg?branch=master)](https://travis-ci.org/danielyinanc/notejam-spring-gradle)

Notejam

*Performance Testing Instructions*

Insert an environmental variable called TEST_URL pointing to actual deployment and run ./gradlew perfTest

*Unit and Integration Testing Instructions*

./gradlew test

*Delivery Instructions*

Application must be packaged as a docker using the DOCKERFILE and pushed to appropriate registry with correct tags
 

*Deployment Instructions*

**Local Deployment**
A mySQL database must be deployed with a created database to which a bespoke user has admin access to. This information will be relayed to application
using the following environmental variables:
- JDBC_URL=jdbc:mysql://localhost:3306/notejam
- JDBC_USER=notejam
- JDBC_PASSWORD=notejam

Application can be launched for local use assuming there is a MySQL database like this:
docker run -it --env-file ./.env <build_hash/tagname>


**Cloud Deployment**

terraform init
terraform plan
terraform apply 

***Scalability Controls***

- Variables.tf controls the app_count variable which is by default at 2 that controls the number of instances of notejam application.
- MYSQL variables (instance class and storage size) are adjustable via main.tf 


*Architecture*

Architecture diagram is as following:
![architecture diagram](assets/architecture.jpg "Architectural Diagram")


