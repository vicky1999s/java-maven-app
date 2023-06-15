@echo off

echo The following Maven command installs your Maven-built Java application
echo into the local Maven repository, which will ultimately be stored in
echo Jenkins's local Maven repository

call mvn jar:jar install:install help:evaluate -Dexpression=project.name
set "NAME=!output!"

@REM echo The following complex command extracts the value of the <name/> element
@REM echo within <project/> of your Java/Maven project's "pom.xml" file.

@REM mvn help:evaluate -Dexpression=project.name | findstr /r /v "^$" > output.txt
@REM set /p NAME=<output.txt

@REM echo The following complex command behaves similarly to the previous one but
@REM echo extracts the value of the <version/> element within <project/> instead.

@REM mvn help:evaluate -Dexpression=project.version | findstr /r /v "^$" > output.txt
@REM set /p VERSION=<output.txt

echo The following command runs and outputs the execution of your Java
echo application (which Jenkins built using Maven) to the Jenkins UI.

java -jar target\my-app-1.0-SNAPSHOT.jar
