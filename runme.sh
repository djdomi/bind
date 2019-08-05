#!/bin/bash

variable.sh
zonefile.sh
createconfig.sh
rndc reload | tail -f /var/log/syslog
