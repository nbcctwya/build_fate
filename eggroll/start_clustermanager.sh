#!/bin/bash
set -x

java -Dlog4j.configurationFile=${EGGROLL_HOME}/conf/log4j2.properties -cp ${EGGROLL_HOME}/lib/*: com.webank.eggroll.core.Bootstrap --bootstraps com.webank.eggroll.core.resourcemanager.ClusterManagerBootstrap -c ${EGGROLL_HOME}/conf/eggroll.properties -p 4670 -s 'EGGROLL_DEAMON'

