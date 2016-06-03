FROM jboss/wildfly:10.0.0.Final

MAINTAINER Robert Brem <brem_robert@hotmail.com>

ENV DEPLOYMENT_DIR ${JBOSS_HOME}/standalone/deployments/

# Keycloak
WORKDIR $JBOSS_HOME
RUN curl -L -O http://downloads.jboss.org/keycloak/1.9.5.Final/adapters/keycloak-oidc/keycloak-wildfly-adapter-dist-1.9.5.Final.zip
RUN unzip keycloak-wildfly-adapter-dist-1.9.5.Final.zip
RUN rm keycloak-wildfly-adapter-dist-1.9.5.Final.zip
WORKDIR $JBOSS_HOME/bin
#RUN ./jboss-cli.sh -c --file=adapter-install-offline.cli

ADD pokertracker.war ${DEPLOYMENT_DIR}
