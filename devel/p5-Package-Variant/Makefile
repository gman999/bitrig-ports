# $OpenBSD: Makefile,v 1.2 2014/12/27 09:02:43 benoit Exp $

COMMENT =	parameterizable packages
DISTNAME =	Package-Variant-1.002002
CATEGORIES =	devel

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Import-Into>=1 \
		devel/p5-Module-Runtime>=0.013 \
		devel/p5-strictures>=1

# p5-Moo to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Moo

.include <bsd.port.mk>
