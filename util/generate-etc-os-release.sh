#!/bin/bash

MAJOR=$(grep __kernel_version_major kernel/sys/version.c | sed s'/.*= \(.*\);/\1/')
MINOR=$(grep __kernel_version_minor kernel/sys/version.c | sed s'/.*= \(.*\);/\1/')
LOWER=$(grep __kernel_version_lower kernel/sys/version.c | sed s'/.*= \(.*\);/\1/')

cat << EOF
PRETTY_NAME="PonyOS ${MAJOR}.${MINOR}"
NAME="PonyOS"
VERSION_ID="${MAJOR}.${MINOR}.${LOWER}"
VERSION="${MAJOR}.${MINOR}.${LOWER}"
ID=ponyos
HOME_URL="https://ponyos.org/"
SUPPORT_URL="https://github.com/klange/ponyos"
BUG_REPORT_URL="https://github.com/klange/ponyos"
EOF
