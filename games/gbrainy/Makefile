# $OpenBSD: Makefile,v 1.41 2015/01/03 05:55:06 ajacoutot Exp $

COMMENT=	brain teaser game

DISTNAME=	gbrainy-2.2.4
EPOCH=		0

CATEGORIES=	games

HOMEPAGE=	https://live.gnome.org/gbrainy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://gent.softcatala.org/jmas/gbrainy/
EXTRACT_SUFX=	.tar.gz

MODULES=	lang/mono \
		x11/gnome

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/mono-addins \
		shells/bash \
		textproc/intltool \
		x11/gnome/mono-gnome \
		x11/gnome/librsvg

RUN_DEPENDS=	devel/mono-addins \
		shells/bash \
		x11/gnome/mono-gnome

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-tests

DLLMAP_FILES=	src/Clients/Classical/gbrainy.exe.config.in \
		src/Core/gbrainy.Core.dll.config.in

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/src/Clients/Classical/gbrainy.in

.include <bsd.port.mk>
