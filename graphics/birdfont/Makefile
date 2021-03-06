# $OpenBSD: Makefile,v 1.20 2015/03/22 15:25:35 bcallah Exp $

BROKEN = 	needs work on bitrig

COMMENT =	free font editor for TTF, EOT, and SVG fonts
DISTNAME =	birdfont-2.3.2
CATEGORIES =	graphics print

# Both libs must have the same SO number!
# See scripts/bavala.py (or patches/patch-scripts_bavala_py)
SHARED_LIBS +=	birdfont			9.0 # 2.3.1
SHARED_LIBS +=	birdxml				9.0 # 2.3.1

HOMEPAGE =	http://birdfont.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 harfbuzz javascriptcoregtk-3.0 m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 webkitgtk-3.0 xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES =	http://birdfont.org/releases/

MODULES =	devel/gettext \
		lang/python

MODPY_ADJ_FILES =	configure install.py

BUILD_DEPENDS =	devel/py-doit \
		lang/vala

LIB_DEPENDS =	devel/libgee \
		devel/libnotify \
		www/webkit,gtk3

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

CONFIGURE_STYLE =	simple

NO_TEST =	Yes
SUBST_VARS +=	DESTDIR

pre-configure:
	perl -pi -e "s,bash,sh,g" ${WRKSRC}/*.sh ${WRKSRC}/scripts/run.py
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/install.py \
		${WRKSRC}/dodo.py ${WRKSRC}/scripts/bavala.py

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit

do-install:
	cd ${WRKSRC} && ./install.py --nogzip=1

.include <bsd.port.mk>
