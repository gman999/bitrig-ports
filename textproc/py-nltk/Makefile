# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:46 espie Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION=	2.0.4
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
REVISION=		0
CATEGORIES=		textproc

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=n/nltk/}

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS=		textproc/py-yaml
RUN_DEPENDS=		graphics/py-matplotlib \
			math/prover9/p9m4 \
			textproc/py-yaml

NO_TEST=		Yes

.include <bsd.port.mk>
