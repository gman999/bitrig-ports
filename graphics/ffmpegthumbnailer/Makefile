# $OpenBSD: Makefile,v 1.24 2015/03/16 18:07:46 naddy Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.8
REVISION=	3
CATEGORIES=	graphics multimedia
MASTER_SITES=	https://ffmpegthumbnailer.googlecode.com/files/

SHARED_LIBS=	ffmpegthumbnailer	4.1

HOMEPAGE=	https://code.google.com/p/ffmpegthumbnailer

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avcodec avformat avutil c jpeg m png pthread
WANTLIB += swscale
WANTLIB += c++ c++abi

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
