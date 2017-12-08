#!/bin/bash

BUILD_DIR="soapui"

chmod u+rwx $BUILD_DIR
chmod go-w -R $BUILD_DIR

chmod a+r -R $BUILD_DIR

find $BUILD_DIR -type d -exec chmod a+x {} \;
chmod a+x $BUILD_DIR/DEBIAN/p*
chmod a+x $BUILD_DIR/usr/local/bin/soapui

dpkg-deb --build $BUILD_DIR soapui_5.4.0-2.deb

# vim: filetype=sh:
