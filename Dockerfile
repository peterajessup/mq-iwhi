FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components
copy config/mqtracingexit.conf /var/mqm/exits64
copy config/mqtracingexit_r /var/mqm/exits64
copy config/tracelibrary.so /var/mqm/exits64
copy config/key.pem /var/mqm/exits64

