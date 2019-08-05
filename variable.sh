#!/bin/bash


#Master/Slave?
ZTYPE=master

#Path zonefiles
ZPATH=/var/named

#Email DNS
ZEMAIL=

#Update Nr (01-99) in case of multiple create same domain
ZSERIAL2=01

#Refresh Time DNS
ZRFRESH=10800

#Retry Time DNS
ZRETRY=3600

#Expre Time DNS
ZEXPIRE=604800

#Min Time DNS
ZMIN=10800

#Primary default IP
ZPIP=

#Address Mail-Server
ZMX1A=

#Priorty, default 10
ZMX1P=10

#Primary DNS Server
NS1=
NS2=
NS3=


#No touch
ZSERIAL1=`date +"%Y%m%d"`
ZPRIMARYNS=$NS1
