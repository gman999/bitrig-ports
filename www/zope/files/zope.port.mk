# $OpenBSD: zope.port.mk,v 1.2 2003/07/31 07:01:22 jolan Exp $
#
#	zope.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

MODZOPE_PYTHON_VERSION=	2.1

BUILD_DEPENDS+= :python->=${MODZOPE_PYTHON_VERSION},<2.2:lang/python/${MODZOPE_PYTHON_VERSION}
RUN_DEPENDS+=	::www/zope

MODZOPE_HOME=		${PREFIX}/lib/zope
MODZOPE_PRODUCTSDIR=	${MODZOPE_HOME}/lib/python/Products

PYTHON_BIN=		${LOCALBASE}/bin/python${MODZOPE_PYTHON_VERSION}
PYTHON_LIBDIR=		${LOCALBASE}/lib/python${MODZOPE_PYTHON_VERSION}
PYTHON_INCLUDEDIR=	${LOCALBASE}/include/python${MODZOPE_PYTHON_VERSION}

NO_REGRESS=	Yes

do-build:
	${PYTHON_BIN} ${PYTHON_LIBDIR}/compileall.py ${WRKDIST}

post-install:
	${CHOWN} -R ${LIBOWN}:${LIBGRP} ${MODZOPE_PRODUCTSDIR}
