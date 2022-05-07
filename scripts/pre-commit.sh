#!/bin/sh

echo "*****Running unit tests******"

./gradlew test

status=$?

echo "*****Done with unit tests******"

exit $status
