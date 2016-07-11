bindir = /usr/bin
srcdir = /etc

install:
	mkdir debian/enem-amigo
	mkdir debian/enem-amigo/usr
	mkdir debian/enem-amigo/usr/bin
	mkdir debian/enem-amigo/etc
	install enem-amigo $(DESTDIR)$(bindir)
	install ../enem-amigo_1.0.orig.tar.gz $(DESTDIR)$(srcdir)
