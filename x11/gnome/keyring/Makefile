# $OpenBSD: Makefile,v 1.109 2014/10/05 12:58:54 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	password agent for the GNOME project

GNOME_PROJECT=	gnome-keyring
GNOME_VERSION=	3.14.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += c++ c++abi

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=	docbook

LIB_DEPENDS=	x11/gnome/gcr

CONFIGURE_ARGS=	--disable-pam

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/gnome-keyring/pkcs11/modules

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-keyring
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring
	rm ${PREFIX}/lib/gnome-keyring/devel/*.{a,la}
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
