#!/bin/bash

source /opt/rh/rh-python38/enable

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ENV_NAME=ads-log-daemon-env
PYTHON=${SCRIPT_DIR}/${ENV_NAME}/bin/python

export LOG_DAEMON_HOST=172.21.32.90
export LOG_DAEMON_NET_ID=172.21.32.90.1.1
export LOG_DAEMON_ROUTE_NAME=ads-log-daemon

# LOG_DAEMON_HOST_NAME=
export LOG_DAEMON_LDAP_SEARCH_BASE=ou=Subnets,dc=reg,o=slac
export LOG_DAEMON_LDAP_SERVER=ldap://psldap2.pcdsn
export LOG_DAEMON_HOST_PREFIXES=plc-*,bhc-*
export LOG_DAEMON_SEARCH_PERIOD=900

export LOG_DAEMON_TARGET_HOST=ctl-logsrv01
export LOG_DAEMON_TARGET_PORT=54321

export LOG_DAEMON_TIMESTAMP_THRESHOLD=60
export LOG_DAEMON_INFO_PERIOD=60

export LOG_DAEMON_SOURCE_ENCODING=latin-1
export LOG_DAEMON_ENCODING=utf-8

set -x
${PYTHON} -u ${ENV_NAME}/bin/ads-log-daemon --ldap
