# $OpenBSD: Makefile,v 1.14 2013/03/11 11:41:28 espie Exp $

COMMENT=		passive network mapping tool

DISTNAME=		siphon-v.666
PKGNAME=		siphon-0.666
REVISION=		0
CATEGORIES=    		security net

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap pthread

MASTER_SITES=		http://siphon.datanerds.net/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/utilities/}

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS='${CFLAGS} -Wall -I. \
				-DSYSCONFDIR="\"${SYSCONFDIR}\""' \
			CCFLAGS='-pthread \
				-DSYSCONFDIR="\"${SYSCONFDIR}\""'
MAKE_ENV=		SYSCONFDIR="${SYSCONFDIR}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/siphon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/siphon
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siphon
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/osprints.conf ${PREFIX}/share/examples/siphon

.include <bsd.port.mk>
