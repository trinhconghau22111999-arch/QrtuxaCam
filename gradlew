#!/bin/sh
#
# Gradle start up script for UN*X
#
APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`
APP_HOME=`cd "${APP_HOME:-./}" && pwd -P` || exit
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'
die () { echo; echo "ERROR: $*"; echo; exit 1; } >&2
warn () { echo "$*"; } >&2

# OS specific support
cygwin=false
msys=false
darwin=false
nonstop=false
case "`uname`" in
  CYGWIN* ) cygwin=true ;;
  Darwin*  ) darwin=true ;;
  MSYS* | MINGW* ) msys=true ;;
  NONSTOP* ) nonstop=true ;;
esac

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
if [ -n "$JAVA_HOME" ]; then
  JAVACMD="$JAVA_HOME/bin/java"
else
  JAVACMD=java
fi
exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS \
  "-Dorg.gradle.appname=$APP_BASE_NAME" \
  -classpath "$CLASSPATH" \
  org.gradle.wrapper.GradleWrapperMain \
  "$@"
