# $OpenBSD: Makefile,v 1.26 2015/02/11 15:22:37 okan Exp $

COMMENT=	simple event correlator

DISTNAME=	sec-2.7.7
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=simple-evcorr/}

HOMEPAGE=	http://www.estpak.ee/~risto/sec/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sec ${PREFIX}/bin/sec
	${INSTALL_MAN} ${WRKSRC}/sec.man ${PREFIX}/man/man1/sec.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sec
	${INSTALL_DATA} ${WRKSRC}/contrib/itostream.c \
		${WRKSRC}/contrib/swatch2sec.pl \
		${PREFIX}/share/examples/sec

.include <bsd.port.mk>
