# $OpenBSD: Makefile,v 1.1.1.1 2015/03/16 15:20:02 bcallah Exp $

V =		1.6
COMMENT =	open source drawing/editing program modeled after Paint.NET
DISTNAME =	pinta-${V}
CATEGORIES =	graphics x11

HOMEPAGE =	http://pinta-project.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# These tarballs have a proper configure. GH checkout does not...
MASTER_SITES =	https://github.com/PintaProject/Pinta/releases/download/${V}/

MODULES =	devel/gettext \
		lang/mono \
		textproc/intltool

BUILD_DEPENDS =	devel/mono-addins \
		x11/mono-gtk2

RUN_DEPENDS =	devel/mono-addins \
		devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/mono-gtk2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

.include <bsd.port.mk>
