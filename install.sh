#!/bin/bash

set -x

injected_dir=$1

${JBOSS_HOME}/bin/jboss-cli.sh --file=${injected_dir}/setup.cli

mkdir -p ${JBOSS_HOME}/standalone/tmp/vfs/temp
mkdir -p ${JBOSS_HOME}/standalone/data/content
mkdir -p ${JBOSS_HOME}/standalone/data/activemq/journal
chmod -R 777 ${JBOSS_HOME}/standalone/data/content
chmod -R 777 ${JBOSS_HOME}/standalone/tmp
chown -R jboss:root ${JBOSS_HOME}/standalone
