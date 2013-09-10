ddwrt-ddns-autologin
====================

Perl script to autologin your dyndns account on your dd-wrt router

Dyndns service has changed the service term, sending annoying email periodically:
 
    Free hostnames must be updated every 30 days to remain active. 
    Inactive hostnames will expire and be deleted. 
    If you wish to prevent the hostname(s) from expiring, please visit the link below:
    ...
    Keep your hostname(s) active without having to update every 30 days, 
    by purchasing a DynDNS Pro upgrade today.

The script is used with cronjobs or *.wanup scrips in dd-wrt to automatically do web
logins to keep the hostname active

perl-www-mechanize package is required to be installed in optware
