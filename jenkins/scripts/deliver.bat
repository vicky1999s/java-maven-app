@echo off

echo The following Maven command installs your Maven-built Java application
echo into the local Maven repository, which will ultimately be stored in
echo Jenkins's local Maven repository

setlocal enabledelayedexpansion
mvn jar:jar install:install help:evaluate -Dexpression=project.name
set "NAME=!output!"

echo The following complex command extracts the value of the <name/> element
echo within <project/> of your Java/Maven project's "pom.xml" file.

mvn help:evaluate -Dexpression=project.name | findstr /r /v "^$" > output.txt
set /p NAME=<output.txt

echo The following complex command behaves similarly to the previous one but
echo extracts the value of the <version/> element within <project/> instead.

mvn help:evaluate -Dexpression=project.version | findstr /r /v "^$" > output.txt
set /p VERSION=<output.txt

echo The following command runs and outputs the execution of your Java
echo application (which Jenkins built using Maven) to the Jenkins UI.

java -jar target\!NAME!-!VERSION!.jar
