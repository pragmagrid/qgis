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

build:
	tar xvf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 						\
		cd $(ARCHIVENAME)-$(VERSION);		\
		./configure --prefix=$(PKGROOT);	\
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
