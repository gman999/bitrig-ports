# $OpenBSD: Makefile,v 1.10 2013/10/11 23:49:30 naddy Exp $

BROKEN= 	needs work on bitrig

COMMENT=	AVR microcontroller hardware in-system programmer

DISTNAME=	uisp-20050207
REVISION =	2
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/uisp/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=uisp/}

CONFIGURE_STYLE=	gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV=          LIBS="-li386"
.endif
MAKE_FLAGS=		CXX="${CXX} ${CXXFLAGS}"

.include <bsd.port.mk>
