# $OpenBSD: Makefile,v 1.6 2014/11/07 10:40:05 ajacoutot Exp $

COMMENT=		library for audio metadata lookup (v5)

V=			5.0.1
DISTNAME=		libmusicbrainz-${V}
PKGNAME=		libmusicbrainz5-${V}
REVISION=		2

SHARED_LIBS +=  musicbrainz5              0.0 # 0.0

CATEGORIES=		audio devel

HOMEPAGE=		http://musicbrainz.org/doc/libmusicbrainz

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m neon
WANTLIB += c++ c++abi pthread

MASTER_SITES=		https://github.com/downloads/metabrainz/libmusicbrainz/

MODULES=		devel/cmake

NO_TEST=		Yes

LIB_DEPENDS=		net/neon

pre-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/cmake/modules/FindNeon.cmake

.include <bsd.port.mk>
