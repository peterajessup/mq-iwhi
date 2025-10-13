#!/bin/bash
oc project mq 
set +e
# Remove the runnning queue manager instance (if any)

# oc delete QueueManager mq-ams

# Delete the route object and secret for the QueueManager keystore (if any), and the mqsc configMap
oc delete route mq-amsroute
oc delete secret mqamskey
oc delete configMap ams1-mqsc
oc delete secret kdb-secret
oc delete secret ams-conf
set -e
# Create the route and the keystore secret and mqsc configMap
oc apply -f mq-amsRoute.yaml
oc create secret tls mqamskey --cert=./tls/tls.crt --key=./tls/tls.key



oc create -f mqsc/mqsc.yaml

set -e
# oc apply -f mqeploy.yaml
oc apply -f mqNoinitC.yaml
