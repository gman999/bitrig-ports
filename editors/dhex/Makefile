# $OpenBSD: Makefile,v 1.4 2014/09/13 13:04:09 bcallah Exp $

COMMENT =		ncurses-based hex-editor with diff mode
V =			0.68
DISTNAME =		dhex_${V}
PKGNAME =		dhex-${V}
REVISION =		0
CATEGORIES =		editors

HOMEPAGE =		http://www.dettus.net/dhex/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.dettus.net/dhex/

WANTLIB =		c ncurses
MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dhex ${PREFIX}/bin/dhex

.include <bsd.port.mk>
