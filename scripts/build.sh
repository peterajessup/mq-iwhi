oc project mq

oc delete BuildConfig mqams

oc create -f yaml/mqBuild.yaml

oc start-build mqams --wait
