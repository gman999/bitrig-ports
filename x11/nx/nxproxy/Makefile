# $OpenBSD: Makefile,v 1.2 2012/01/03 16:58:38 ajacoutot Exp $

COMMENT=		NX X proxy support tool

DASHVERSION=		1
DISTNAME=		nxproxy-${MAJOR_VERSION}-${DASHVERSION}
PKGNAME=		nxproxy-${MAJOR_VERSION}.${DASHVERSION}
REVISION=		2

WANTLIB += c m Xcomp
WANTLIB += c++ c++abi pthread
LIB_DEPENDS=		x11/nx/nxcomp

CONFIGURE_STYLE=        gnu
MAKE_ENV=		CC=${CC} CXX=${CXX} \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include/nx" \
			CCFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
MAKE_FLAGS=		LOCAL_LIBRARIES=${X11BASE}/lib/libXau.a

WRKDIST=		${WRKDIR}/nxproxy

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/NX/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/nxproxy ${PREFIX}/NX/bin

.include <bsd.port.mk>
