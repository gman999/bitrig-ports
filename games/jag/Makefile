# $OpenBSD: Makefile,v 1.2 2013/03/11 11:07:39 espie Exp $ 
COMMENT =		arcade-puzzle game
V = 			0.3.2
DISTNAME =		jag-${V}
CATEGORIES =		games
HOMEPAGE =		http://jag.xlabsoft.com
REVISION =		1

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE QtGui QtOpenGL QtXml SDL SDL_mixer SM X11 Xext
WANTLIB += Xi Xinerama Xrandr Xrender c fontconfig freetype m
WANTLIB += pthread
WANTLIB += c++ c++abi

MASTER_SITES = 		http://jag.xlabsoft.com/files/
DISTFILES = 		jag-${V}-src.zip jag-${V}-data.zip

MODULES =		x11/qt4
BUILD_DEPENDS = 	archivers/unzip
LIB_DEPENDS =		devel/sdl \
			devel/sdl-mixer
WRKDIST =		${WRKDIR}/jag-${V}-src
DESTDIRNAME = 		INSTALL_ROOT

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/Game.pro ${WRKSRC}/main.cpp

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 Game.pro

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jag
	cd ${WRKDIR}/jag-${V}-data/data && pax -rw . ${PREFIX}/share/jag
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/
	find ${PREFIX}/share -type d -exec chmod ${DIRMODE} {} \;
	find ${PREFIX}/share -type f -exec chmod ${SHAREMODE} {} \;

.include <bsd.port.mk>
