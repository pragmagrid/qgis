#!/bin/bash
#
# Build and install prerequisites for compiling lmserver dependencies
#
. /opt/rocks/share/devel/src/roll/etc/bootstrap-functions.sh

# enable elgis repo, need for map server
(cd src/RPMS; 
ELGISREPO=elgis-release-6-6_0.noarch.rpm
wget  http://elgis.argeo.org/repos/6/$ELGISREPO
rpm -i $ELGISREPO
)

#do this only once for roll distro to keep known RPMS in the roll src
#(cd src/RPMS; 
#yumdownloader --resolve --enablerepo epel grass.x86_64; 
#yumdownloader --resolve --enablerepo epel qgis.x86_64; 
#yumdownloader --resolve --enablerepo epel qgis-devel.x86_64; 
#yumdownloader --resolve --enablerepo epel qgis-grass.x86_64; 
#yumdownloader --resolve --enablerepo epel qgis-python.x86_64; 
#)

# qt4 and its dependencies 
compile wxWidgets
install qgis-wxWidgets

compile wxPython
install qgis-wxPython

compile qt
install qgis-qt

# for qgis
compile sip
install qgis-sip

compile pyqt4
install qgis-pyqt4
