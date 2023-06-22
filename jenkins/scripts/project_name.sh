#!/bin/bash

MONTH=$(date "+%m")
YEAR=$(data "+%Y")
PROJECT_NAME=$(mvn help:evaluate -Dexpression=project.name | grep "^[^\[]")
PROJECT_VERSION=$(mvn help:evaluate -Dexpression=project.version | grep "^[^\[]")
FILE_NAME=${PROJECT_NAME}-${PROJECT_VERSION}.jar