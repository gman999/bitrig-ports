# $OpenBSD: Makefile,v 1.6 2014/11/22 20:44:29 kili Exp $

COMMENT =		asynchronous IO operations

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		async-2.0.1.5
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.2,<2.5

# Needs --enable-test, which will probably set by ghc.port.mk soon
# (when I have some numbers about build times).
NO_TEST =		Yes

.include <bsd.port.mk>
