FROM scratch

LABEL Name="jboss-eap-7/cli-test" \
      Version="latest" \
      Release="latest" \
      Architecture="x86_64" 

COPY setup.cli /injected/setup.cli
COPY install.sh /injected/install.sh
COPY standalone-openshift.xml /injected/standalone-openshift.xml
