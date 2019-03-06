FROM osixia/openldap:1.2.3
MAINTAINER Ryan Ahearn <ryan.ahearn@gsa.gov>

ENV LDAP_ORGANISATION="18F"
ENV LDAP_DOMAIN="18f.gsa.gov"

ARG LDAP_ADMIN_PASSWORD
ENV LDAP_ADMIN_PASSWORD=$LDAP_ADMIN_PASSWORD

COPY users/ /container/service/slapd/assets/config/bootstrap/ldif/custom/
