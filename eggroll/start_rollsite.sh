#!/bin/bash
set -x

#mkdir -p /data/projects/fate/eggroll/logs/eggroll/
#touch /data/projects/fate/eggroll/logs/eggroll/eggroll-audit.log
#ln -sf /dev/stdout /data/projects/fate/eggroll/logs/eggroll/eggroll-audit.log
#touch /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.log
#ln -sf /dev/stdout /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.log
#touch /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.err.log 
#ln -sf /dev/stderr /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.err.log
java -Dlog4j.configurationFile=${EGGROLL_HOME}/conf/log4j2.properties -cp ${EGGROLL_HOME}/lib/*: com.webank.eggroll.core.Bootstrap --bootstraps com.webank.eggroll.core.resourcemanager.NodeManagerBootstrap -c ${EGGROLL_HOME}/conf/eggroll.properties -p 4671 -s 'EGGROLL_DEAMON'
