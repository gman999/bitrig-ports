# $OpenBSD: Makefile,v 1.4 2015/03/16 18:07:41 naddy Exp $

COMMENT=	ini file parsing library

DISTNAME=	iniparser-3.1
REVISION=	2

SHARED_LIBS +=	iniparser 0.0 # 0

CATEGORIES=	devel

HOMEPAGE=	http://ndevilla.free.fr/iniparser/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/iniparser
ALL_TARGET=	default
TEST_TARGET=	check

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/dictionary.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/src/iniparser.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libiniparser.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/libiniparser.so.${LIBiniparser_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
