# $OpenBSD: Makefile,v 1.13 2015/03/19 08:04:58 jasper Exp $

COMMENT=	RSpec tests for testing machine configuration/state

DISTNAME=	serverspec-2.10.1

HOMEPAGE=	http://serverspec.org/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/ruby-multi_json,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/3/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/3/its,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=2.15.0

MODRUBY_TEST=	rspec3
TEST_DEPENDS=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
