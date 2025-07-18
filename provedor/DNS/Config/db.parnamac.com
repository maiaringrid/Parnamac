;
; BIND data file for local loopback interface
;
$ORIGIN parnamac.com.
$TTL	604800

@   IN  SOA ns.parnamac.com. root.parnamac.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.parnamac.com.
@	IN	MX	10	domail.parnamac.com.
@	IN	A	192.168.56.1

ns      IN  A   192.168.56.1
domail  IN  A   192.168.56.1
webmail IN  A   192.168.56.1
www     IN  A   192.168.56.1
proxy   IN  CNAME www