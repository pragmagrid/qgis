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
	cd patch-files && find . -type f | grep -v CVS | cpio -pduv ..
	( 							\
		cd $(ARCHIVENAME)-$(VERSION);				\
		mkdir gtk-build; \
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		cd gtk-build; \
		../configure --enable-unicode --with-opengl --enable-debug --prefix=$(PKGROOT);	\
		$(MAKE);					\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION)/gtk-build;				\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(MAKE) prefix=$(ROOT)/$(PKGROOT) install; \
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
