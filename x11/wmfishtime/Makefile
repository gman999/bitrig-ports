# $OpenBSD: Makefile,v 1.23 2014/10/07 09:10:07 dcoppa Exp $

COMMENT=		wm-dockapp; clock application with clock, date and fish

DISTNAME=		wmfishtime-1.24
REVISION=		0
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

MODULES=		devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

LIB_DEPENDS=		x11/gtk+2

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -Wall `pkg-config --cflags gtk+-2.0`" \
			LIBS="`pkg-config --libs gtk+-2.0`"

NO_TEST=		Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKBUILD)/wmfishtime $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKBUILD)/wmfishtime.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
