# $OpenBSD: Makefile,v 1.9 2015/01/08 15:45:45 gonzalo Exp $

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-14.12.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/smplayer \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smtube

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake4 \
			LRELEASE=${LOCALBASE}/bin/lrelease4

.include <bsd.port.mk>
