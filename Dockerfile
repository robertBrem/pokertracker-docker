FROM robertbrem/wildfly:0.0.1

MAINTAINER Robert Brem <brem_robert@hotmail.com>

ADD pokertracker.war ${DEPLOYMENT_DIR}
