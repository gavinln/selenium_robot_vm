#!/bin/bash

# go to  and find a fast mirror
ROOT=`dirname $0`
REQUIREMENTS_DIR=$ROOT/../puppet/requirements
MIRROR=http://g.pypi.python.org/simple
pip install -i $MIRROR -r $REQUIREMENTS_DIR/selenium_requirements.txt
