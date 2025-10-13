FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components
copy config/mqtracingexit.conf /etc/mqm/exits64
copy config/mqtracingexit_r /etc/mqm/exits64
copy config/tracelibrary.so /etc/mqm/exits64
copy config/key.pem /etc/mqm/exits64

