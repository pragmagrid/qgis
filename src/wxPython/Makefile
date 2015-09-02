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
	tar xjvf $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) 
	( 							\
		cd $(ARCHIVENAME)-$(VERSION)/wxPython;			\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(PY.PATH) setup.py build;  			\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION)/wxPython;			\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(PY.PATH) setup.py install --root=$(ROOT)/;	\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
