# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/metrics-json-3.1.2.pom --download-uri http://central.maven.org/maven2/io/dropwizard/metrics/metrics-json/3.1.2/metrics-json-3.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild metrics-json-3.1.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A set of Jackson modules which provide serializers for most Metrics classes."
HOMEPAGE="http://metrics.codahale.com/metrics-json/"
SRC_URI="http://central.maven.org/maven2/io/dropwizard/metrics/metrics-json/3.1.2/metrics-json-3.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="io.dropwizard.metrics:metrics-json:3.1.2"

# Common dependencies
# POM: ../poms/metrics-json-3.1.2.pom
# com.fasterxml.jackson.core:jackson-databind:2.4.2 -> >=dev-java/jackson-databind-2.5.1:2
# io.dropwizard.metrics:metrics-core:3.1.2 -> >=app-maven/metrics-core-3.1.2:0
# io.dropwizard.metrics:metrics-healthchecks:3.1.2 -> >=app-maven/metrics-healthchecks-3.1.2:0
# org.slf4j:slf4j-api:1.7.7 -> >=dev-java/slf4j-api-1.7.7:0
# POM: ../poms/metrics-json-3.1.2.pom
CDEPEND="
	>=app-maven/metrics-core-3.1.2:0
	>=app-maven/metrics-healthchecks-3.1.2:0
	>=dev-java/jackson-databind-2.5.1:2
	>=dev-java/slf4j-api-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-databind-2,metrics-core,metrics-healthchecks,slf4j-api"
