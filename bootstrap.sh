#!/bin/bash
#
# Build and install prerequisites for compiling lmserver dependencies
#
. /opt/rocks/share/devel/src/roll/etc/bootstrap-functions.sh

# qt4 and its dependencies 
compile wxWidgets
install qgis-wxWidgets

compile wxPython
install qgis-wxPython

compile qt
install qgis-qt

compile sip
install qgis-sip

compile pyqt4
install qgis-pyqt4
