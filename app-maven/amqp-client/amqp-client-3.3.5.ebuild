# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/amqp-client-3.3.5.pom --download-uri http://central.maven.org/maven2/com/rabbitmq/amqp-client/3.3.5/amqp-client-3.3.5-sources.jar --slot 0 --keywords "~amd64" --ebuild amqp-client-3.3.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="RabbitMQ AMQP Java Client"
HOMEPAGE="http://www.rabbitmq.com"
SRC_URI="http://central.maven.org/maven2/com/rabbitmq/amqp-client/3.3.5/amqp-client-3.3.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.rabbitmq:amqp-client:3.3.5"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

