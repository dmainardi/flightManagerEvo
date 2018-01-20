#!/bin/sh
mvn clean package && docker build -t com.dmainardi/flightManagerEvo .
docker rm -f flightManagerEvo || true && docker run -d -p 8080:8080 -p 4848:4848 --name flightManagerEvo com.dmainardi/flightManagerEvo 
