# $OpenBSD: Makefile,v 1.18 2014/10/31 13:51:36 gonzalo Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-14.9.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtDBus QtGui QtNetwork QtScript QtXml SM X11 Xext
WANTLIB += Xi Xinerama Xrender c fontconfig freetype m pthread
WANTLIB += z
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/mplayer>=20090708 \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smplayer

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake4 \
			LRELEASE=${LOCALBASE}/bin/lrelease4

.include <bsd.port.mk>
