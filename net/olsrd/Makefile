# $OpenBSD: Makefile,v 1.22 2015/02/16 22:57:11 naddy Exp $

COMMENT-main=		OLSR routing daemon
COMMENT-gui=		OLSR routing daemon GUI
COMMENT-plugins=	OLSR routing daemon plugins

VERSION=		0.6.0
DISTNAME=		olsrd-${VERSION}
PKGNAME-main=		olsrd-${VERSION}
PKGNAME-gui=		olsrd-gui-${VERSION}
PKGNAME-plugins=	olsrd-plugins-${VERSION}
REVISION-main=		5
REVISION-gui=		6
REVISION-plugins=	6

CATEGORIES=	net

HOMEPAGE=	http://www.olsr.org/
MASTER_SITES=	${HOMEPAGE}releases/0.6/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES= -main -gui -plugins

BUILD_DEPENDS=	devel/bison

LIB_DEPENDS-main=	# empty
WANTLIB-main=	c

LIB_DEPENDS-gui= x11/gtk+2
WANTLIB-gui=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb \
		xcb-render xcb-render-util z gdk_pixbuf-2.0 gtk-x11-2.0 \
		gdk-x11-2.0 ${MODGETTEXT_WANTLIB}

WANTLIB-plugins=	# empty
LIB_DEPENDS-plugins=	# empty
RUN_DEPENDS-plugins=	olsrd-${VERSION}:net/olsrd

USE_GMAKE=	Yes
NO_TEST=	Yes

MODULES=	devel/gettext

ALL_TARGET=	build_all
MAKE_FLAGS=	DEBUG=0 OS=obsd CC="${CC}"
FAKE_FLAGS=	SBINDIR=${DESTDIR}/${PREFIX}/sbin \
		ETCDIR=${DESTDIR}/${PREFIX}/share/examples/olsrd \
		LIBDIR=${DESTDIR}/${PREFIX}/lib/olsrd-plugins \
		DOCDIR=${DESTDIR}/${PREFIX}/share/doc/olsrd \
		MANDIR=${DESTDIR}/${PREFIX}/man

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugin_loader.c

post-build:
	cd ${WRKSRC}/gui/linux-gtk; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

INSTALL_TARGET=	install_all

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/olsrd-plugins
	
post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gui/linux-gtk/olsrd-gui ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/lib/dot_draw/olsr-topology-view.pl \
		${PREFIX}/bin
	cd ${PREFIX}/man; ${GUNZIP_CMD} man5/olsrd.conf.5.gz man8/olsrd.8.gz
	${INSTALL_DATA} ${WRKSRC}/files/olsrd.conf.default.* \
		${PREFIX}/share/examples/olsrd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/olsrd
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGELOG README README-Link-Quality* \
 		${PREFIX}/share/doc/olsrd

.include <bsd.port.mk>
