# $Id$
#
# @Copyright@
# @Copyright@
#
# $Log$

REDHAT.ROOT = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

# wget http://download.qt.io/archive/qt/4.7/qt-everywhere-opensource-src-4.7.4.tar.gz
#$(PY.PATH) configure-ng.py <<< $$'yes\n';

version.mk:
	cat ../version.mk version.mk.in > version.mk


build:
	tar xf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 							\
		cd $(ARCHIVENAME)-$(VERSION);			\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		./configure --prefix=$(PKGROOT) <<< $$'o\nyes\n';\
		$(MAKE);					\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION)/;			\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(MAKE) INSTALL_ROOT=$(ROOT) install; 		\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
