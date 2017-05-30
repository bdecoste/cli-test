#!/bin/bash

set -x

injected_dir=$1

#defaultjobrepo="<default-job-repository name=\"in-memory\"/>"
#sed -i "s|<!-- ##DEFAULT_JOB_REPOSITORY## -->|${defaultjobrepo}" ${JBOSS_HOME}/standalone/configuation/standalone-openshift.xml

cp ${injected_dir}/standalone-openshift.xml ${JBOSS_HOME}/standalone/configuation/standalone-openshift.xml

${JBOSS_HOME}/bin/jboss-cli.sh --file=${injected_dir}/setup.cli

mkdir -p ${JBOSS_HOME}/standalone/tmp/vfs/temp
mkdir -p ${JBOSS_HOME}/standalone/data/content
mkdir -p ${JBOSS_HOME}/standalone/data/activemq/journal
mkdir -p ${JBOSS_HOME}/standalone/configuration/standalone_xml_history
chmod -R 777 ${JBOSS_HOME}/standalone/data
chmod -R 777 ${JBOSS_HOME}/standalone/tmp
chmod -R 777 ${JBOSS_HOME}/standalone/configuration/standalone_xml_history
chown -R 185:root ${JBOSS_HOME}
