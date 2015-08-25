# $Id$
#
# @Copyright@
# @Copyright@
#
# $Log$

REDHAT.ROOT = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

# wget http://sourceforge.net/projects/pyqt/files/sip/sip-4.16.9/sip-4.16.9.tar.gz

version.mk:
	cat ../version.mk version.mk.in > version.mk

PY.PATH = /opt/python/bin/$(PYTHONVER)

build:
	tar xvf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 							\
		cd $(ARCHIVENAME)-$(VERSION);			\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(PY.PATH) configure.py;  			\
		$(MAKE);		  			\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION);			\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(MAKE) DESTDIR=$(ROOT) install;		\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
