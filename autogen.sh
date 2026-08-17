#!/bin/sh
# autogen.sh for ctk-icon-naming-utils

PROJECT=ctk-icon-naming-utils

# Check for required tools
(type autoreconf > /dev/null 2>&1) || {
    echo "Error: You need to have 'autoconf' and 'automake' installed."
    exit 1
}

echo "Regenerating the build system for $PROJECT..."

# Run autoreconf: -f (force), -i (install missing auxiliary files)
autoreconf -fi || {
    echo "Error: autoreconf failed."
    exit 1
}

# If the NOCONFIGURE environment variable is set, stop here
if test x$NOCONFIGURE = x ; then
    echo "Running configure with the provided arguments..."
    echo "To skip the configure step, run: NOCONFIGURE=1 ./autogen.sh"
    ./configure "$@" && echo "Now type 'make' to compile."
else
    echo "Skipping configure process."
fi
