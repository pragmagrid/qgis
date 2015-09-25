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

build:
	tar xjf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	cd patch-files && find . -type f | grep -v CVS | cpio -pduv ..
	( 					\
		cd $(ARCHIVENAME)-$(VERSION);	\
		$(PKGROOT)/bin/qmake qwt.pro;	\
		$(MAKE) PREFIX=$(PKGROOT);	\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(						\
		cd $(ARCHIVENAME)-$(VERSION);		\
		$(MAKE) INSTALL_ROOT=$(ROOT) install;	\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk

