# $OpenBSD: Makefile,v 1.11 2014/10/03 23:02:46 sthen Exp $

COMMENT =		html/xml templating engine

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		meld3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www textproc

HOMEPAGE =		https://github.com/supervisor/meld3

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=m/meld3/}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}meld3
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCS}

.include <bsd.port.mk>
