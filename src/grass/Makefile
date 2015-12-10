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
LMPATH = /opt/lifemapper

build:
	gunzip -c $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) | $(TAR) -xf -
	cd patch-files && find . -type f | grep -v CVS | cpio -pduv ..
	( 							\
		cd $(ARCHIVENAME)-$(VERSION);				\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		./configure --with-cxx \
			--without-ffmpeg \
			--with-gdal=$(LMPATH)/bin/gdal-config \
			--with-sqlite  \
			--with-postgres \
			--with-nls \
			--with-python \
			--with-cairo \
			--with-geos \
			--with-freetype --with-freetype-includes=/usr/include/freetype2 \
			--with-wxwidgets=$(PKGROOT)/bin/wx-config \
			--without-mysql \
			--without-odbc \
			--without-fftw \
			--enable-largefile \
			--with-proj-includes=$(LMPATH)/include --with-proj-libs=$(LMPATH)/lib \
			--with-postgres-includes=$(POSTGRES_DIR)/include --with-postgres-libs=$(POSTGRES_DIR)/lib 
			--prefix=$(PKGROOT);	\
		$(MAKE);					\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd $(ARCHIVENAME)-$(VERSION);				\
		export PYTHON=$(PY.PATH);             		\
		export PATH=$(PKGROOT)/bin:$(PATH);		\
		$(MAKE) prefix=$(ROOT)/$(PKGROOT) ROOT=$(ROOT)/ install; \
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION) version.mk
