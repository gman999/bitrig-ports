# $OpenBSD: Makefile,v 1.8 2014/12/14 12:07:54 kili Exp $

COMMENT =		generic HTTP types for Haskell

DISTNAME =		http-types-0.8.5
CATEGORIES =		devel www

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-case-insensitive>=0.2,<1.3 \
			devel/hs-text>=0.11.0.2

.include <bsd.port.mk>
