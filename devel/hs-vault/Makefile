# $OpenBSD: Makefile,v 1.6 2014/11/25 22:11:04 kili Exp $

COMMENT =		persistent store for values of arbitrary types

DISTNAME =		vault-0.2.0.4
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-hashable>=1.1,<1.3 \
			devel/hs-unordered-containers>=0.2.1.0,<0.3

.include <bsd.port.mk>
