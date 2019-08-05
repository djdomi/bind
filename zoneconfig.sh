if [ "$ZTYPE" == master ]
then
echo generating $ZTYPE
echo "" >> /etc/bind/named.conf.auto
echo "        type $ZTYPE;">> /etc/bind/named.conf.auto
echo "        file "/var/named/$1";">> /etc/bind/named.conf.auto
echo "        also-notify {">> /etc/bind/named.conf.auto
echo "                1.2.3.4;">> /etc/bind/named.conf.auto
echo "                2.3.4.5;">> /etc/bind/named.conf.auto
echo "                3.4.5.6;">> /etc/bind/named.conf.auto
echo "                };">> /etc/bind/named.conf.auto
echo "        allow-transfer {">> /etc/bind/named.conf.auto
echo "                10.10.10.10;">> /etc/bind/named.conf.auto
echo "                10.10.1.2;">> /etc/bind/named.conf.auto
echo "                10.10.1.3;">> /etc/bind/named.conf.auto
echo "                10.10.1.1;">> /etc/bind/named.conf.auto
echo "                };">> /etc/bind/named.conf.auto
echo "};">> /etc/bind/named.conf.auto
echo "Generated master $1 conf with $2 IP done"
elif [ "$ZTYPE" == slave ]
then
echo "zone "$1" { ">>$ZPATH/$1
echo " masters {">>$ZPATH/$1
echo "                213.109.161.237;">>$ZPATH/$1
echo "                };">>$ZPATH/$1
echo "">>$ZPATH/$1
echo "        type slave;">>$ZPATH/$1
echo "        file "/var/named/wiki-mod.de";">>$ZPATH/$1
echo "        also-notify {">>$ZPATH/$1
echo "                10.10.1.2;">>$ZPATH/$1
echo "                10.10.1.3;">>$ZPATH/$1
echo "                10.10.1.1;">>$ZPATH/$1
echo "                };">>$ZPATH/$1
echo "        allow-transfer {">>$ZPATH/$1
echo "                10.10.1.1;">>$ZPATH/$1
echo "                10.10.1.4;">>$ZPATH/$1
echo "                10.10.1.2;">>$ZPATH/$1
echo "                10.10.1.3;">>$ZPATH/$1
echo "">>$ZPATH/$1
echo "                };">>$ZPATH/$1
echo "};">>$ZPATH/$1
echo "generated slave config $1 with IP $2 done"
else
echo "unknown parameter"
fi

chown bind:bind $ZPATH/$1
rndc reload | tail  -f /var/log/syslog
