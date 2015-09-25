# $Id$
#
# @Copyright@
# @Copyright@
#
# $Log$

REDHAT.ROOT = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

version.mk:
	cat ../version.mk version.mk.in > version.mk

PY.PATH = /opt/python/bin/$(PYTHONVER)
CFLAGS="-I$(LMPATH)/include/ -I$(PKGROOT)/include"
LDFLAGS="-L$(LMPATH)/lib -L$(PKGROOT)/lib -L/opt/sqlite/lib"

build:
	tar xf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 						\
		cd $(ARCHIVENAME)-$(VERSION);		\
		CFLAGS=$(CFLAGS) LDFLAGS=$(LDFLAGS) ./configure --prefix=$(PKGROOT);	\
		$(MAKE);				\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION);			\
		$(MAKE) prefix=$(ROOT)/$(PKGROOT) install; \
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
