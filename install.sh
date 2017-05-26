#!/bin/bash

set -x

injected_dir=$1

${JBOSS_HOME}/bin/jboss-cli.sh --file=${injected_dir}/setup.cli

mkdir -p ${JBOSS_HOME}/standalone/tmp/vfs/temp
mkdir -p ${JBOSS_HOME}/standalone/data/content
mkdir -p ${JBOSS_HOME}/standalone/data/activemq/journal
chmod -R 777 ${JBOSS_HOME}/standalone/data
chmod -R 777 ${JBOSS_HOME}/standalone/tmp
chmod -R 777 ${JBOSS_HOME}/configuration/standalone_xml_history
chown -R 185:root ${JBOSS_HOME}
