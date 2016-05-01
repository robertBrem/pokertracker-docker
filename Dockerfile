FROM robertbrem/payara-configured

MAINTAINER Robert Brem <brem_robert@hotmail.com>

ADD pokertracker.war ${DEPLOYMENT_DIR}
