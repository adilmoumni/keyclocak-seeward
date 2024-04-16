#!/bin/bash
echo "----starting keycloak from sh script----"
# exec /opt/bitnami/keycloak/bin/kc.sh build
exec /opt/bitnami/keycloak/bin/kc.sh start \
--transaction-xa-enabled true \
--hostname-debug true \
--https-port 8444 \
--proxy passthrough \
--hostname dev-auth.seeward.io \
--hostname-strict-backchannel true \
--https-certificate-file /opt/bitnami/keycloak/conf/fullchain.pem  \
--https-certificate-key-file /opt/bitnami/keycloak/conf/privkey.pem \
#--https-protocols TLSv1.3,TLSv1.2 \

# --db-url jdbc:postgresql://db:5432/keycloak \
# --transaction-xa-enabled true \
# --db postgres \
# --db-url-port 5432 \
# --db-schema public \


# --hostname dev-auth.seeward.io \

#--hostname dev-seeward-keycloack-fb64d5dcf474.herokuapp.com \
exit $?