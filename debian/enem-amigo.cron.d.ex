#
# Regular cron jobs for the enem-amigo package
#
0 4	* * *	root	[ -x /usr/bin/enem-amigo_maintenance ] && /usr/bin/enem-amigo_maintenance
