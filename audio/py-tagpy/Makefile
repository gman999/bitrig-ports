# $OpenBSD: Makefile,v 1.18 2014/09/29 07:02:02 jasper Exp $

COMMENT=		Python bindings to TagLib audio file tag library

MODPY_EGG_VERSION =	2013.1
DISTNAME =		tagpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		6

CATEGORIES =		audio devel

HOMEPAGE =		http://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_python-mt m pthread tag ${MODPY_WANTLIB}
WANTLIB += c++ c++abi pthread

MASTER_SITES =		${MASTER_SITE_PYPI:=t/tagpy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

LIB_DEPENDS =		lang/python/${MODPY_VERSION} \
			audio/taglib \
			devel/boost>=1.53.0p5

CONFIGURE_ARGS +=	--boost-compiler=gcc42 \
			--boost-lib-dir=${LOCALBASE}/lib \
			--boost-inc-dir=${LOCALBASE}/include \
			--taglib-lib-dir=${LOCALBASE}/lib \
			--taglib-inc-dir=${LOCALBASE}/include/taglib \

.if ${FLAVOR:Mpython3}
CONFIGURE_ARGS +=	--boost-python-libname=boost_python${MODPY_MAJOR_VERSION}-mt
.else
CONFIGURE_ARGS +=	--boost-python-libname=boost_python-mt
.endif

do-configure:
		cd ${WRKSRC} && env ${CONFIGURE_ENV} ${MODPY_BIN} ./configure.py ${CONFIGURE_ARGS}

.include <bsd.port.mk>
