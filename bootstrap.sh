#!/bin/bash
#
# Build and install prerequisites for compiling lmserver dependencies
#
. /opt/rocks/share/devel/src/roll/etc/bootstrap-functions.sh

# set qgis lib direcotry for dynamic linker
echo "/opt/qgis/bli" > /etc/ld.so.conf.d/qgis.conf
/sbin/ldconfig

# qt4 and its dependencies 
compile wxWidgets
install qgis-wxWidgets
/sbin/ldconfig

compile wxPython
install qgis-wxPython
/sbin/ldconfig

compile qt
install qgis-qt
/sbin/ldconfig

compile sip
install qgis-sip
/sbin/ldconfig

compile pyqt4
install qgis-pyqt4
/sbin/ldconfig

# compile freexl, need for spatialite
compile freexl
install qgis-freexl
/sbin/ldconfig

compile spatialite
install qgis-spatialite
/sbin/ldconfig

compile qscintilla2
install qgis-qscintilla2
/sbin/ldconfig
