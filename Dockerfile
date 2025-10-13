FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components
mkdir -p /run/exits64
copy config/mqtracingexit.conf /run/exits64
copy config/mqtracingexit_r /run/exits64
copy config/tracelibrary.so /run/exits64
copy config/key.pem /run/exits64

