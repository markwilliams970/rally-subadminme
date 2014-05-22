#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: subadminme.sh 209"
    exit
fi

SUBSCRIPTION_ID=$1

MY_USERNAME="user@company.com"
MY_PASSWORD="top\$3cr3t"
INSTALL_DIR="/Users/myusername/Documents/rally-subadminme-master"

PYTHON="/usr/bin/python"

echo
echo "Subscription Admins for SubID ${SUBSCRIPTION_ID}"
echo "================================================"

${PYTHON} ${INSTALL_DIR}/usage.py -s ${SUBSCRIPTION_ID} -d 1 -u ${MY_USERNAME} -p ${MY_PASSWORD} | \
    awk -F '",' -f ${INSTALL_DIR}/parseUsage.awk | sort
