FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components
RUN mkdir -p /usr/exits64
copy config/mqtracingexit.conf /usr/exits64
copy config/mqtracingexit_r /usr/exits64
copy config/tracelibrary.so /usr/exits64
copy config/key.pem /usr/exits64

