# $OpenBSD: Makefile,v 1.15 2015/03/21 13:20:08 ajacoutot Exp $

COMMENT =		classes and setuptools plugin for Mercurial repositories

MODPY_EGG_VERSION = 	6.2.1
DISTNAME =		hgtools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/jaraco/hgtools/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=h/hgtools/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/mercurial

NO_TEST =		Yes

pre-install:
			chmod 644 ${WRKSRC}/hgtools.egg-info/*

.include <bsd.port.mk>
