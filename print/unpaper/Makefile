# $OpenBSD: Makefile,v 1.4 2014/05/10 07:42:47 ajacoutot Exp $

COMMENT=	post-processing tool for scanned paper sheets

DISTNAME=	unpaper-0.3
REVISION=	0

CATEGORIES=	print graphics

HOMEPAGE=	http://unpaper.berlios.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=unpaper/}

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -lm -o unpaper src/unpaper.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unpaper ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unpaper
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/unpaper

.include <bsd.port.mk>
