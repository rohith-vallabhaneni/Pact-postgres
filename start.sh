#!/bin/bash
echo "Inside the edit"
export SEDBIN=/bin/sed

export DRP_CF_HTTP_PORT=$(echo $DRP_CF_HTTP_PORT)

$SEDBIN -i "s/<broker_port>/${DRP_CF_HTTP_PORT}/" /etc/nginx/sites-enabled/default
echo "Out"
