# $OpenBSD: Makefile,v 1.1.1.1 2013/03/20 21:55:28 landry Exp $

COMMENT =	common-utility raster handling methods
PROJECT =	libgaiagraphics
DISTNAME =	${PROJECT}-0.5
REVISION =	0
SHARED_LIBS =	gaiagraphics 0.0 #2.0
CATEGORIES =	graphics geo

LIB_DEPENDS +=	graphics/cairo \
		textproc/libxml \
		devel/geotiff

WANTLIB += X11 Xext Xrender cairo expat fontconfig freetype geotiff
WANTLIB += jpeg m pixman-1 png proj pthread pthread-stubs tiff
WANTLIB += xcb xcb-render xcb-shm xml2 z

.include <bsd.port.mk>
