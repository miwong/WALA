#!/bin/bash

#REAL_NAME=`realpath $0`
MY_DIR=`pwd`

TMP=$MY_DIR/tmp

if [[ ! -e $MY_DIR/js.jar ]]; then
  mkdir -p $TMP

  cd $TMP

  wget -O rhino1_6R5.zip ftp://ftp.mozilla.org/pub/mozilla.org/js/rhino1_6R5.zip 
 
  unzip rhino1_6R5.zip rhino1_6R5/js.jar

  cp rhino1_6R5/js.jar $MY_DIR/js.jar

  cd $MY_DIR
  rm -rf $TMP
fi

if [[ ! -e $MY_DIR/xalan.jar ]]; then
  mkdir -p $TMP

  cd $TMP

  wget -O xalan-j_2_7_0-bin.tar.gz http://archive.apache.org/dist/xml/xalan-j/xalan-j_2_7_0-bin.tar.gz

  tar xzf xalan-j_2_7_0-bin.tar.gz xalan-j_2_7_0/xalan.jar

  cp xalan-j_2_7_0/xalan.jar $MY_DIR/xalan.jar

  cd $MY_DIR
  rm -rf $TMP
fi

if [[ ! -e $MY_DIR/jericho-html-2.6.jar ]]; then
  mkdir -p $TMP

  cd $TMP

  wget -O jericho-html-2.6.zip http://sourceforge.net/projects/jerichohtml/files/jericho-html/2.6/jericho-html-2.6.zip/download

  jar xf jericho-html-2.6.zip jericho-html-2.6/lib/jericho-html-2.6.jar

  cp jericho-html-2.6/lib/jericho-html-2.6.jar $MY_DIR/jericho-html-2.6.jar

  cd $MY_DIR
  rm -rf $TMP
fi
