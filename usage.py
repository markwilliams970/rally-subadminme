#!/usr/bin/env python

#################################################################################################
#
#  usage.py -- Get Rally Usage Report
#
USAGE = """
Usage: python usage.py -s SubID -u Username -p Password
"""
#################################################################################################

import sys, os, getopt
import httplib, urllib, urllib2
import datetime
import time
from datetime import date, timedelta
from base64 import b64encode
import cookielib, Cookie, os
import csv

#################################################################################################

errout = sys.stderr.write

#################################################################################################

def main(argv):

	opts, args = getopt.getopt(argv,"s:u:p:")

	subscription_id=''
	my_username=''
	my_password=''

	for opt, arg in opts:
		if opt == '-s':
			subscription_id = arg
		elif opt == '-u':
			my_username = arg
		elif opt == '-p':
			my_password = arg

	rally_host = "us1.rallydev.com"
	authentication_endpoint = "slm/webservice/v2.0/security/authorize"
	authentication_url="https://%s/%s" % (rally_host, authentication_endpoint)

	# Construct Usage URL
	datetime_format_string = "%m/%d/%Y"
	end_string = datetime.datetime.now().strftime(datetime_format_string)
	yesterday_date = date.today()-timedelta(days=1)
	start_string = yesterday_date.strftime(datetime_format_string)

	usage_endpoint = "/slm/admin/tools/usageReportCSV.sp?startDate=%s&endDate=%s&subscriptionId=%s" % (start_string, end_string, subscription_id )
	usage_url = "https://%s/%s" % (rally_host, usage_endpoint)

	# Cookie Manager
	cookiejar = cookielib.CookieJar()
	url_opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cookiejar),urllib2.HTTPHandler())
	authentication_request = urllib2.Request(authentication_url)

	# Base64-encode credentials and set headers
	userAndPass = b64encode("%s:%s" % (my_username,my_password)).decode("ascii")
	authentication_headers = { 'Authorization' : 'Basic %s' %  userAndPass }
	pData = None

	# Authenticate vs. WSAPI2 auth endpoint
	authenticationHttpReq = urllib2.Request(authentication_url, pData, authentication_headers)
	authenticate_response = url_opener.open(authenticationHttpReq)

	# Now go get the usage report data
	usage_headers = { 'Accept' : 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' }
	usageHttpReq = urllib2.Request(usage_url, pData, usage_headers)
	usage_response = url_opener.open(usageHttpReq)
	usage_content = usage_response.read()

	print usage_content

if __name__ == '__main__':
    main(sys.argv[1:])