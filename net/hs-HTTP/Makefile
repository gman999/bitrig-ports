# $OpenBSD: Makefile,v 1.25 2014/11/22 20:56:03 kili Exp $

COMMENT =		library for client-side HTTP

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		HTTP-4000.2.10
CATEGORIES =		net devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =-fnetwork23

RUN_DEPENDS =		devel/hs-mtl>=2.0,<2.2 \
			devel/hs-network<2.5 \
			devel/hs-parsec
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
