
.. hightlight:: rest

QGIS roll
==========

.. contents::


Introduction
-------------
This roll installs QGIS and its dependent packages. 
Will need to be installed on the host with lifemapper-server roll

Download
~~~~~~~~~~
Download prerequisite packages 

    :qgis       : wget http://qgis.org/downloads/qgis-2.8.0.tar.bz2
    :           : wget http://qgis.org/downloads/qgis-2.8.0.tar.bz2.md5
    :sip        : wget http://sourceforge.net/projects/pyqt/files/sip/sip-4.16.9/sip-4.16.9.tar.gz
    :qt         : wget http://download.qt.io/archive/qt/4.7/qt-everywhere-opensource-src-4.7.4.tar.gz
    :wxPython   : wget http://downloads.sourceforge.net/wxpython/wxPython-src-3.0.2.0.tar.bz2
    :wxWidgets  : wget https://sourceforge.net/projects/wxwindows/files/3.0.2/wxWidgets-3.0.2.tar.bz2
    :spatialite : wget http://www.gaia-gis.it/gaia-sins/libspatialite-sources/libspatialite-4.3.0a.tar.gz
    :freexl     : wget http://www.gaia-gis.it/gaia-sins/freexl-1.0.2.tar.gz
    :qscintilla2: wget http://sourceforge.net/projects/pyqt/files/QScintilla2/QScintilla-2.9/QScintilla-gpl-2.9.tar.gz


Required Rolls
~~~~~~~~~~~~~~~
Required rolls must be added at the same time when the  qgis roll is installed. 
See ``Adding a roll`` section for details.

:**python**:    Python roll provides python2.7 and numpy


Building a roll
~~~~~~~~~~~~~~~~~
Checkout roll distribution from git repo :: 

   # git clone https://github.com/pragmagrid/qgis.git 
   # cd qgis/

To build a roll, first execute a script that downloads and installs some packages 
and RPMS that are prerequisites for other packages during the roll build stage: ::

   # ./bootstrap.sh  

TODO
