#!/bin/bash

if [ -z "$1" && -z "$2" ]; then
    echo "Usage: usageme.sh 209 30"
    exit
fi

SUBSCRIPTION_ID=$1

MY_USERNAME="user@company.com"
MY_PASSWORD="top\$3cr\$t"
HOME_DIR="/Users/mydomainusername/"
INSTALL_DIR="${HOME_DIR}/Documents/rally-subadminme-master"
OUTPUT_DIR="${HOME_DIR}/Desktop"

PYTHON="/usr/bin/python"

datetimestamp=`date +%Y%m%d%H%M`

filename="Usage_${datetimestamp}_${1}.csv" 

echo "Pulling ${2}-day usage report for SubscriptionID: ${1}"

${PYTHON} ${INSTALL_DIR}/usage.py -s ${SUBSCRIPTION_ID} -d $2 -u ${MY_USERNAME} -p ${MY_PASSWORD} > /Users/mydomainusername/Desktop/${filename}
echo "Usage report written to file: ${filename}"