# $OpenBSD: Makefile,v 1.13 2015/01/21 14:05:46 sthen Exp $

COMMENT= 	database OO schema for Jifty

MODULES=	cpan

DISTNAME=	Jifty-DBI-0.68
REVISION=	0
CATEGORIES=	databases www

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/p5-Test-Warn
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-DBIx-DBSchema \
		databases/p5-Data-Page \
		devel/p5-Cache-Memcached \
		devel/p5-Cache-Simple-TimedExpiry \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-ReturnValue \
		devel/p5-Class-Trigger \
		devel/p5-Clone \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-ISO8601 \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Exporter-Lite \
		devel/p5-Hash-Merge \
		devel/p5-Object-Declare>=0.22 \
		devel/p5-Scalar-Defer>=0.10 \
		devel/p5-Universal-require \
		textproc/p5-Lingua-EN-Inflect \
		www/p5-URI

# a lot of tests will be skipped without DB connections
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
