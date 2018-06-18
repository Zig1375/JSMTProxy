#!/usr/bin/env bash
workingdir=$(cd "$(cd "$(dirname "${BASH_SOURCE}")"; pwd -P)"; pwd)
xdl_conf="${workingdir}/script/launcher.ini"
. ${workingdir}/script/lib.launcher.sh