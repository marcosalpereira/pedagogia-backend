#!/bin/sh

backendHome=$1
frontendHome=$2

cd $frontendHome
npm run spring:build
rm -r $backendHome/src/main/resources/static/*
cp -r dist/* $backendHome/src/main/resources/static/

cd $backendHome
mvn clean install
