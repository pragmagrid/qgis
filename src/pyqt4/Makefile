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
# your_program <<< $'yes\nno\nmaybe\n'
#

version.mk:
	cat ../version.mk version.mk.in > version.mk

PY.PATH = /opt/python/bin/$(PYTHONVER)

build:
	tar xf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 							\
		cd $(ARCHIVENAME)-$(VERSION);			\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(PY.PATH) configure-ng.py <<< $$'yes\n';		 	\
		$(MAKE);		  			\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION);			\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(MAKE) INSTALL_ROOT=$(ROOT) install;		\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
