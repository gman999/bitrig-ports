# $OpenBSD: Makefile,v 1.3 2015/01/12 20:57:55 zhuk Exp $

SHARED_ONLY =	Yes

COMMENT =	geospatial routing extension for PostgreSQL

GH_TAG =	v2.0.0
GH_COMMIT =	d6ed2cba4c574b8ac463632df451b6f011fd522d
GH_PROJECT =	pgrouting
GH_ACCOUNT =	pgRouting
REVISION =	0

DISTNAME =	pgrouting-2.0.0
CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	databases/postgresql devel/cmake

LIB_DEPENDS =	math/cgal
RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server
TEST_DEPENDS =	${BUILD_PKGPATH}
TEST_ENV =	LD_PRELOAD=libpthread.so
WANTLIB +=	CGAL boost_system-mt boost_thread-mt gmp m
WANTLIB += 	c++ c++abi

MODPOSTGRESQL_TEST_CMD = \
	cd ${WRKSRC}; \
	./tools/test-runner.pl

SUBST_VARS +=	MODPOSTGRESQL_TEST_PGHOST
pre-configure:
	${SUBST_CMD} ${WRKSRC}/tools/test-runner.pl

.include <bsd.port.mk>
