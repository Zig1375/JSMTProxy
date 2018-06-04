#!/usr/bin/env bash
if [ $# -gt 0 -a $(id -un) != "www" ]; then
    printf "Using sudo -u www...\n\n\n"
    sudo -u www $0 $@
    exit $?
fi

workingdir=$(cd "$(cd "$(dirname "${BASH_SOURCE}")"; pwd -P)"; pwd)
xdl_conf="${workingdir}/script/launcher.ini"
. ${workingdir}/script/lib.launcher.sh