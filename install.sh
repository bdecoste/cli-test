#!/bin/bash

set -x

injected_dir=$1

${JBOSS_HOME}/bin/jboss-cli.sh --file=${injected_dir}/setup.cli
