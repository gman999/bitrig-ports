# $OpenBSD: Makefile,v 1.20 2015/03/16 18:07:54 naddy Exp $

COMMENT=	library to interface the ident protocol server (rfc1413)

SHARED_LIBS +=	ident                     0.0 # 0.0

DISTNAME=	libident-0.32
REVISION=	1
CATEGORIES=	devel net security
MASTER_SITES=	http://www.remlab.net/files/libident/

HOMEPAGE=	http://www.remlab.net/libident/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/admin

USE_GROFF=	Yes

.include <bsd.port.mk>
