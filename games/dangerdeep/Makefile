# $OpenBSD: Makefile,v 1.1.1.1 2013/06/07 03:41:44 bentley Exp $

BROKEN = 		needs work on bitrig

COMMENT =		WWII German submarine simulator

PKGNAME =		dangerdeep-0.3.99.3327

CATEGORIES =		games

REVISION =		1

HOMEPAGE =		http://dangerdeep.sourceforge.net/

# Code GPLv2+
# Graphics CC BY-NC-ND 2.5
# Music CC BY-NC-ND 2.0
PERMIT_PACKAGE_CDROM =	Noncommercial
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += GL GLU SDL SDL_image SDL_mixer bz2 c fftw3f m
WANTLIB += pthread
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dangerdeep/}
DISTFILES =		dangerdeep-0.4.0_pre3327.tar.gz \
			dangerdeep-data-0.4.0_pre3327.zip

MODULES =		devel/scons
LIB_DEPENDS =		archivers/bzip2 \
			devel/sdl-image \
			devel/sdl-mixer \
			math/fftw3,float

MAKE_ENV =		X11BASE="${X11BASE}" \
			CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/dangerdeep-0.4.0_pre3327

MODSCONS_FLAGS =	debug=1 \
			devel=1 \
			datadir=${TRUEPREFIX}/share/dangerdeep \
			installbindir=${PREFIX}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/SConstruct

do-install:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/dangerdeep
	cp -R ${WRKDIR}/data/* ${PREFIX}/share/dangerdeep

.include <bsd.port.mk>
