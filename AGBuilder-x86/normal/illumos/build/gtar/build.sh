#!/usr/bin/bash
#
# {{{ CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License, Version 1.0 only
# (the "License").  You may not use this file except in compliance
# with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END }}}
#
# Copyright 2011-2012 OmniTI Computer Consulting, Inc.  All rights reserved.
# Copyright 2019 OmniOS Community Edition (OmniOSce) Association.
#
. ../../lib/functions.sh

PROG=tar
VER=1.32
PKG=archiver/gnu-tar
SUMMARY="gtar - GNU tar"
DESC="GNU tar - A utility used to store, backup, and transport files (gtar)"

RUN_DEPENDS_IPS="
    system/prerequisite/gnu
    system/extended-system-utilities
    compress/gzip
    compress/bzip2
    compress/xz
    compress/zstd
"

set_arch 64

CONFIGURE_OPTS="
    --program-prefix=g
    --with-rmt=/usr/sbin/rmt
    --with-zstd=/usr/bin/zstd
"
# The configure script checks to see if eaccess() is present in libgen and if
# so it links libgen into the final binary. However, we also have faccessat()
# and that is used in preference to eaccess(). libgen is therefore an
# unecessary library.
CONFIGURE_OPTS_WS="ac_cv_search_eaccess=\"none required\""

init
download_source $PROG $PROG $VER
patch_source
prep_build
build
run_testsuite check
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
