FROM bitnami/keycloak:22
# FROM keycloak/keycloak:22.0
# COPY docker-entrypoint.sh /opt/jboss/tools
# RUN ls -l /opt/keycloak/bin
# COPY docker-entrypoint.sh /opt/keycloak/bin
# COPY docker-entrypoint.sh /opt/bitnami/scripts/keycloak
# COPY cert.pem /opt/keycloak/bin
# COPY key.pem /opt/keycloak/bin
COPY fullchain.pem /opt/bitnami/keycloak/conf
COPY privkey.pem /opt/bitnami/keycloak/conf
COPY keycloak.conf /opt/bitnami/keycloak/conf
COPY docker-entrypoint.sh /opt/bitnami/scripts/keycloak
EXPOSE 8444
# /opt/bitnami/keycloak/bin
# RUN chmod +x /opt/jboss/tools/docker-entrypoint.sh
# RUN ls -l /opt/bitnami/keycloak/conf
# RUN echo "The value of PORT is:${PORT}"
# RUN chmod +x /opt/bitnami/scripts/keycloak/docker-entrypoint.sh
ENTRYPOINT ["/opt/bitnami/scripts/keycloak/docker-entrypoint.sh"]
# # CMD ["-b", "dev-seeward-keycloack-fb64d5dcf474.herokuapp.com:8444"]
#CMD ["start"]
