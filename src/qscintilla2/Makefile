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
	tar xvf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 						\
		cd $(ARCHIVENAME)-$(VERSION)/Qt4Qt5;	\
		$(PKGROOT)/bin/qmake qscintilla.pro;	\
		$(MAKE);				\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(						\
		cd $(ARCHIVENAME)-$(VERSION)/Qt4Qt5;	\
		$(MAKE) INSTALL_ROOT=$(ROOT) install;	\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk

