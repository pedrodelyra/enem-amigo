bindir = /usr/local/bin
srcdir = /home/*/

install:
	install enem-amigo $(bindir)
	cp -rp ../enem-amigo-1.0 $(srcdir)
