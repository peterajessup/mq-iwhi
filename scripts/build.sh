oc project mq

oc delete BuildConfig mqiwhi

oc create -f mqBuild.yaml

oc start-build mqiwhi --wait
