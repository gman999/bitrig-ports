# $OpenBSD: Makefile,v 1.23 2015/03/16 18:07:43 naddy Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.9
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
REVISION =		10
SHARED_LIBS +=  	usb-1.0                   1.0 # 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.libusb.org

# LGPL 2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libusb/}
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
