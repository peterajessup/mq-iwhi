oc project mq

oc delete BuildConfig mqams

oc create -f yaml/mqbuild.yaml

oc start-build mqams --wait
