FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components

copy config/mqtracingexit.conf /tmp
copy config/mqtracingexit_r /tmp
copy config/tracelibrary.so /tmp
copy config/key.pem /tmp

