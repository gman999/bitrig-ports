# $OpenBSD: Makefile,v 1.14 2015/01/21 14:27:59 sthen Exp $

COMMENT=	simple tree object

MODULES=	cpan
DISTNAME=	Tree-Simple-1.18
REVISION=	2
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS= devel/p5-Test-Exception \
		 devel/p5-Test-Memory-Cycle>=1.02

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
