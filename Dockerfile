FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components

copy config/mqtracingexit.conf /run
copy config/mqtracingexit_r /run
copy config/tracelibrary.so /run
copy config/key.pem /run

