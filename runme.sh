#!/bin/bash

variable.sh $1 $2
zonefile.sh $1 $2
zoneconfig.sh $1 $2
rndc reload | tail -f /var/log/syslog
