# $OpenBSD: Makefile,v 1.15 2015/03/16 18:07:49 naddy Exp $

COMMENT=	mail purpose library

DISTNAME=	libetpan-1.0
REVISION=	4
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libetpan/}

SHARED_LIBS=	etpan	14.0

HOMEPAGE=	http://libetpan.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

WANTLIB=	crypto expat m ssl z curl idn sasl2
WANTLIB +=	c++ c++abi pthread

LIB_DEPENDS+=	net/curl \
		devel/libidn \
		security/cyrus-sasl2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gnutls --with-sasl=${LOCALBASE}
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libetpan/html/{API,README}
	${INSTALL_DATA} ${WRKSRC}/{COPYRIGHT,doc/{DOCUMENTATION,{API,README}.txt}} ${PREFIX}/share/doc/libetpan
.       for d in API README
	  ${INSTALL_DATA} ${WRKSRC}/doc/${d}.html ${PREFIX}/share/doc/libetpan/html
	  cd ${WRKSRC}/doc/${d};\
	  find * -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/libetpan/html/${d}/{} \;
.	endfor

.include <bsd.port.mk>
