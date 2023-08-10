#!/bin/bash

namespace="simple-webserver-probe"
route_host=$(oc get route centos-webserver -n $namespace -o jsonpath='{.spec.host}')
count=100

if [ -z ${route_host} ]
then
  echo "Did not get Route"
  exit 1
fi

for i in {1..100}
do
  curl ${route_host}
done
