# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/metrics-jvm-3.1.2.pom --download-uri http://central.maven.org/maven2/io/dropwizard/metrics/metrics-jvm/3.1.2/metrics-jvm-3.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild metrics-jvm-3.1.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A set of classes which allow you to monitor critical aspects of your Java Virtual Machine
        using Metrics."
HOMEPAGE="http://metrics.codahale.com/metrics-jvm/"
SRC_URI="http://central.maven.org/maven2/io/dropwizard/metrics/metrics-jvm/3.1.2/metrics-jvm-3.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="io.dropwizard.metrics:metrics-jvm:3.1.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/metrics-jvm-3.1.2.pom
# io.dropwizard.metrics:metrics-core:3.1.2 -> >=app-maven/metrics-core-3.1.2:0
# org.slf4j:slf4j-api:1.7.7 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/metrics-jvm-3.1.2.pom
CDEPEND="
	>=app-maven/metrics-core-3.1.2:0
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="metrics-core,slf4j-log4j12"
