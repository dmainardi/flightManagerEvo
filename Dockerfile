FROM airhacks/glassfish
COPY ./target/flightManagerEvo.war ${DEPLOYMENT_DIR}
