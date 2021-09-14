#!/bin/bash
set -x

#mkdir -p /data/projects/fate/eggroll/logs/eggroll/
#touch /data/projects/fate/eggroll/logs/eggroll/eggroll-audit.log
#ln -sf /dev/stdout /data/projects/fate/eggroll/logs/eggroll/eggroll-audit.log
#touch /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.log
#ln -sf /dev/stdout /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.log
#touch /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.err.log 
#ln -sf /dev/stderr /data/projects/fate/eggroll/logs/eggroll/eggroll.jvm.err.log

java -Dlog4j.configurationFile=${EGGROLL_HOME}/conf/log4j2.properties -cp ${EGGROLL_HOME}/lib/*:${EGGROLL_HOME}/conf/ com.webank.eggroll.rollsite.EggSiteBootstrap -c ${EGGROLL_HOME}/conf/eggroll.properties

