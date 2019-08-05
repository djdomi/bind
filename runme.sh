#!/bin/bash

zonefile.sh
createconfig.sh
rndc reload | tail -f /var/log/syslog
