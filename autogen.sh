#!/bin/sh

echo "Generating build information using aclocal, autoheader, automake and autoconf"
echo "This may take a while ..."

# Regenerate configuration files.

aclocal-1.16
autoheader
automake-1.16 --include-deps --add-missing --copy 
autoconf

echo "Now you are ready to run ./configure."
echo "You can also run  ./configure --help for extra features to enable/disable."
