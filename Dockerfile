FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.3.1.0-r1
# Copy in the keystore.conf
copy conf/keystore.conf /run
copy web/mqwebuser.xml /var/mqm/web/installations/Installation1/servers/mqweb
