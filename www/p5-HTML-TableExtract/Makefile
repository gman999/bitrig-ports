# $OpenBSD: Makefile,v 1.22 2015/01/20 09:47:10 benoit Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
DISTNAME =	HTML-TableExtract-2.12
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
