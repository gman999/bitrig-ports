# $OpenBSD: Makefile,v 1.17 2015/03/17 23:43:25 bcallah Exp $

COMMENT =	command line app.net client
DISTNAME =	texapp-0.6.9
CATEGORIES =	net

HOMEPAGE =	http://www.floodgap.com/software/texapp/

# Floodgap Free Software License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES =	perl

RUN_DEPENDS =	devel/p5-Term-ReadLine-TTYtter \
		net/curl

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/texapp.txt ${PREFIX}/bin/texapp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/texapp
	${INSTALL_DATA} ${WRKSRC}/license.txt ${PREFIX}/share/doc/texapp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/texapp
	${INSTALL_DATA} ${WRKSRC}/texapprc ${PREFIX}/share/examples/texapp

.include <bsd.port.mk>
