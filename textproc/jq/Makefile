# $OpenBSD: Makefile,v 1.3 2014/11/02 12:37:44 sthen Exp $

SHARED_LIBS +=	jq                        0.0 # 1.4

COMMENT =		lightweight and flexible command-line JSON processor

DISTNAME =		jq-1.4
CATEGORIES =		textproc
HOMEPAGE =		http://stedolan.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://stedolan.github.io/jq/download/source/

CONFIGURE_STYLE =	gnu 
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
