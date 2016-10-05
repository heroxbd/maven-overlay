# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jmock-1.1.0.pom --download-uri http://central.maven.org/maven2/jmock/jmock/1.1.0/jmock-1.1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild jmock-1.1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="jMock is a library for testing Java code using mock objects"
HOMEPAGE="http://www.jmock.org/"
SRC_URI="http://central.maven.org/maven2/jmock/jmock/1.1.0/jmock-1.1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="jmock:jmock:1.1.0"

# Common dependencies
# POM: ../poms/jmock-1.1.0.pom
# junit:junit:3.8.1 -> >=dev-java/junit-4.12:4
# POM: ../poms/jmock-1.1.0.pom
CDEPEND="
	>=dev-java/junit-4.12:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="junit-4"
JAVA_TESTING_FRAMEWORK="junit"
