# $OpenBSD: Makefile,v 1.19 2015/03/16 18:07:39 naddy Exp $

COMMENT=	automatic text creation from templates
CATEGORIES=	devel

V=		5.8.7
DISTNAME=	autogen-${V}
REVISION=	5

SHARED_LIBS +=	opts                 27.5     # .27.5
SHARED_LIBS +=	guileopts            1.0      # .0.1

HOMEPAGE=	http://autogen.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_GNU:=autogen/rel${V}/}

# GPLv2
PERMIT_PACKAGE_CDROM=Yes

WANTLIB += c gmp guile ltdl lzma m pthread xml2 z

MODULES=	devel/gettext

LIB_DEPENDS=	lang/guile \
		textproc/libxml
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libregex \
		--includedir=${PREFIX}/include/autogen \
		${ENABLE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/config

MAKE_FLAGS+=	INFO_DEPS=
USE_GROFF =	Yes
.include <bsd.port.mk>
