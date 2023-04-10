#!/bin/bash

projectName="microDemo"
scanTime=`data + %Y%m%d%H%M%S`

for((i=1;i<10;i++))
do
    sonar-scanner -Dsonar.host.url=http://131.10.11.94:31262/
    -Dsonar.projectKey=${projectName}${i} \
    -Dsonar.projectName=${projectName}${i} \
    -Dsonar.projectVersion=${scanTime} \
    -Dsonar.login=admin \
    -Dsonar.password=12345678 \
    -Dsonar.ws.timeout=30 \
    -Dsonar.projectDescription="my first sonarscan project!" \
    -Dsonar.links.homepage=http://www.baidu.com \
    -Dsonar.sources=src \
    -Dsonar.sourceEncoding=UTF-8 \
    -Dsonar.java.binaries=target/classes \
    -Dsonar.java.test.binaries=target/test-classes \
    -Dsonar.java.surefire.report=target/surefire-reports

    echo "${projectName} scan success !!"
done
