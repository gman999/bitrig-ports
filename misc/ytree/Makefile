# $OpenBSD: Makefile,v 1.17 2015/02/16 22:57:10 naddy Exp $

BROKEN= 	needs work on bitrig

COMMENT=	DOS-XTREE(tm) look-a-like file manager

DISTNAME=	ytree-1.97
REVISION=	1
CATEGORIES=	misc

HOMEPAGE=	http://www.han.de/~werner/ytree.html

MASTER_SITES=	http://www.han.de/~werner/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses readline
LIB_DEPENDS=	devel/readline

ALL_TARGET=	ytree

NO_TEST=	Yes

CFLAGS+=	-DCOLOR_SUPPORT -DREADLINE_SUPPORT
LDFLAGS+=	-lreadline -lcurses
MAKE_FLAGS+=	CC=${CC} CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ytree ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytree
	${INSTALL_DATA} ${WRKBUILD}/ytree.conf \
		${PREFIX}/share/examples/ytree/ytree.conf
	${INSTALL_MAN} ${WRKBUILD}/ytree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
