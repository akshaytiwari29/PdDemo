FROM jboss/wildfly
ADD target/WebApp.war /opt/jboss/wildfly/standalone/deployments/
