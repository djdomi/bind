echo Generating Domain Zonefile $1 with IP $2
echo "\$TTL    86400 ">$ZPATH/$1
echo "" >>$ZPATH/$1
echo "@       IN      SOA     $NS1. $ZEMAIL. ( ">>$ZPATH/$1
echo "                        $ZSERIAL1$ZSERIAL2      ; Serial">>$ZPATH/$1
echo "                        $ZRFRESH   ; Refresh">>$ZPATH/$1
echo "                        $ZRETRY    ; Retry">>$ZPATH/$1
echo "                        $ZEXPIRE  ; Expire">>$ZPATH/$1
echo "                        $ZMIN ) ; Minimum">>$ZPATH/$1
echo "">>$ZPATH/$1
echo "                                  IN NS   $NS1.">>$ZPATH/$1
echo "                                  IN NS   $NS2.">>$ZPATH/$1
echo "                                  IN NS   $NS3.">>$ZPATH/$1
echo "*.$1.                             IN A    $ZPIP">>$ZPATH/$1
echo "$1.                               IN A    $ZPIP">>$ZPATH/$1
echo "$1.                               IN MX  $ZMX1P $ZMX1A. ">>$ZPATH/$1
echo "" >>$ZPATH/$1
echo "" >>$ZPATH/$1
echo ";;;;;;;;;;;;;;;;;;;;;;;" >> $ZPATH/$1
echo "">>$ZPATH/$1
echo "_acme-challenge         TXT     '""'">>$ZPATH/$1
echo Done...
