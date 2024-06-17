#!/bin/bash
oc project mq 
set +e
# Remove the runnning queue manager instance (if any)

oc delete QueueManager mq-ams

# Delete the route object and secret for the QueueManager keystore (if any), and the mqsc configMap
oc delete route mq-amsroute
oc delete secret mqamskey
oc delete configMap ams1-mqsc
#oc delete persistentvolumeclaim data-mq2-ibm-mq-0 
set -e
# Create the route and the keystore secret and mqsc configMap
oc apply -f mq-amsRoute.yaml
oc create secret tls mqamskey --cert=./tls/tls.crt --key=./tls/tls.key
oc create secret generic kdb-secret --from-file=ams.kdb=ams.kdb --from-file=ams.sth=ams.sth 
oc create secret generic ams-conf --from-file=keystore.conf=keystore.conf

oc create -f mqsc/mqsc.yaml

set -e
oc apply -f mqDeploy.yaml
