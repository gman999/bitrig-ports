# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:49 espie Exp $

COMMENT=	ncurses-based MUD client with triggers, aliases, colors

DISTNAME=	mudix-4.3
REVISION=	0
CATEGORIES=	net games
HOMEPAGE=	http://dw.nl.eu.org/mudix.html

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses panel

MASTER_SITES=	http://dw.nl.eu.org/mudix/

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mudix ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mudix
	${INSTALL_DATA} ${WRKSRC}/sample.usr ${PREFIX}/share/mudix

NO_TEST=	Yes

.include <bsd.port.mk>
