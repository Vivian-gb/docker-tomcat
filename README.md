# docker-tomcat

#to build image in case it is not on docker hub. The command must be run in the same folder that Dockerfile is.

docker build -t viviangb/tomcat .

#to start it, change path to a folder you prefer

docker run -it -p 8080:8080 --name gato_thomas -v ~/docker/docker-tomcat/deploy:/usr/local/tomcat/webapps:rw tomcat:latest

#to access our test

http://localhost:8080/poc-filas/info
