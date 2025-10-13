FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.4.2.0-r1
# Copy in the tracing components
RUN mkdir /opt/mqm/exits64
copy config/mqtracingexit.conf /opt/mqm/exits64
copy config/mqtracingexit_r /opt/mqm/exits64
copy config/tracelibrary.so /opt/mqm/exits64
copy config/key.pem /opt/mqm/exits64

