# $OpenBSD: Makefile,v 1.86 2015/07/20 19:55:58 ajacoutot Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.2.6.10
CATEGORIES=	net
HOMEPAGE=	https://www.torproject.org/
REVISION=	1

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event m pthread ssl z

MASTER_SITES=	https://www.torproject.org/dist/

CONFIGURE_STYLE=gnu
AUTOCONF_VERSION = 2.69
# PIE is already taken care of on a per-arch basis, and we have stack protection
# anyway on FRAME_GROWS_DOWN archs.
CONFIGURE_ARGS=	--with-ssl-dir=/usr \
		--disable-gcc-hardening
CONFIGURE_ENV+=ac_cv_member_struct_ssl_method_st_get_cipher_by_char=no

DB_DIR=		/var/tor
SUBST_VARS+=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
