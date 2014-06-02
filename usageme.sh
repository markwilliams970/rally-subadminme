#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: usageme.sh 209 30"
    exit
fi

SUBSCRIPTION_ID=$1

MY_USERNAME="jr_admin@rallydev.com"
MY_PASSWORD="Wasson04!"
INSTALL_DIR="/Users/jrobinson/Documents/rally-subadminme-master"

PYTHON="/usr/bin/python"

datetimestamp=`date +%Y%m%d%H%M`

filename="Usage_${datetimestamp}_${1}.csv" 

echo "Pulling ${2}-day usage report for SubscriptionID: ${1}"


${PYTHON} ${INSTALL_DIR}/usage.py -s ${SUBSCRIPTION_ID} -d $2 -u ${MY_USERNAME} -p ${MY_PASSWORD} > ${filename}
echo "Usage report written to file: ${filename}"