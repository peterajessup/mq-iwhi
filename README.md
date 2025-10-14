# mq-iwhi

This repository is to be used for creating an MQ Queue Manager on OCP, version 4.1x, with IBM's Cloudpak for Integration Installed (verison 16.2 or higher).

The artifacts include an MQ QueueManager Object Custom resource definition and
a route object associated with the channel created for access to the queue manager from outside the cluster, as well as an MQSC source yaml used to create a config-map object and an mq.ini used for configuring the queue manager. 

In addition, a tls key and cert is provided for the queue manager's keystore, and a secret is created 
using these artifacts. These files can also be used to create a keystore for the MQ client to connect, for simplicity.
Alternatively you can fork this repository and use your own certs and keys.

In addition, assets are provided in the config directory to enable the OTEL tracing capability, via the MQ tracing exit and configuration 
items described at https://www.ibm.com/docs/en/hybrid-integration/saas?topic=meet-technology-preview-monitoring-mq-messages-in-webmethods-hybrid-integration-transactions 

An intermediate image must first be built using the script build.sh in order to copy the API exit files into the IBM supplied base image. 
This script expects an ImageStream object called 'iwhiqm' to exisit in the mq namespace to which the image is pushed. Note that you need to enable the openshift image registry:
https://www.ibm.com/docs/en/masv-and-l/cd?topic=installing-enabling-red-hat-openshift-internal-image-registry

Once the image is built use the deploy.sh to deploy the image which is pushed to a local registry to deploy the queue manager.

 # Points of variation
 
 Environment Variables 
 
 OTEL_EXPORTER_OTLP_HEADERS - The API key must be provided for the IWHI instance - obfuscated in this repository
 
 OTEL_RESOURCE_ATTRIBUTES - The environment must be provided in the format documented in the first link above.

 mqtracingexit.conf

 OTLP_EXPORTER_GRPC_ENDPOINT = "otel.a-vir-r1.e2em.ipaas.automation.ibm.com:4317"  - The destination for your GRPC endpoint 

 
 
