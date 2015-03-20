COMMENT =		Analog clock in ncurses

DISTNAME =		tty-clock-0.1
CATEGORIES =		misc


HOMEPAGE =		https://github.com/xorg62/tty-clock

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB =		c ncurses

GH_ACCOUNT =		xorg62
GH_PROJECT =		tty-clock
GH_COMMIT =		516afbf9f96101c0bed1c366f80d7ca087b0557d

USE_GMAKE = 		Yes

# Dependencies
#
#MODULES =		ncurses
#BUILD_DEPENDS =		ncurses

#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

# Overrides for default values
#
LDFLAGS =		-lncurses
MAKE_ENV =		LDFLAGS="${LDFLAGS}"
#MAKE_FILE =		???
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

ALL_TARGET =		tty-clock
#INSTALL_TARGET =	???
#TEST_TARGET =		???

.include <bsd.port.mk>
