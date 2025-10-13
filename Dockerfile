FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components
copy config/mqtracingexit.conf /etc/exits64
copy config/mqtracingexit_r /etc/exits64
copy config/tracelibrary.so /etc/exits64
copy config/key.pem /etc/exits64

