oc project mq

oc delete BuildConfig mqams

oc create -f mqBuild.yaml

oc start-build mqams --wait
