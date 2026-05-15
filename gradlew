#!/bin/sh

##############################################################################
##  Gradle start up script for POSIX
##############################################################################

# Resolve links
app_path=$0
while [ -h "$app_path" ]; do
    ls=$( ls -ld -- "$app_path" )
    link=${ls#*' -> '}
    case $link in
      /*)   app_path=$link ;;
      *)    app_path=${app_path%"${app_path##*/}"}$link ;;
    esac
done

APP_HOME=$( cd "${app_path%"${app_path##*/}"}./" && pwd -P ) || exit
APP_BASE_NAME=${0##*/}
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Determine Java command
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD=$JAVA_HOME/bin/java
else
    JAVACMD=java
fi

exec "$JAVACMD" -Xmx64m -Xms64m \
        -Dorg.gradle.appname=$APP_BASE_NAME \
        -classpath "$CLASSPATH" \
        org.gradle.wrapper.GradleWrapperMain \
        "$@"
