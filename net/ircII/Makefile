# $OpenBSD: Makefile,v 1.46 2014/12/14 20:15:39 naddy Exp $

COMMENT=	Internet Relay Chat client

VERSION=	20141122
DISTNAME=	ircii-${VERSION}
PKGNAME=	ircII-${VERSION}
CATEGORIES=	net
MASTER_SITES=	http://ircii.warped.com/ \
		http://ircii.warped.com/old/ \
		ftp://ircii.warped.com/pub/ircII/ \
		https://distfiles.macports.org/ircii/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.eterna.com.au/ircii/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto ssl termcap

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

MODULES =	converters/libiconv
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LIBS="-liconv"

NO_TEST=	Yes

.include <bsd.port.mk>
