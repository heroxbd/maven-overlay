# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jmock-2.5.1.pom --download-uri http://central.maven.org/maven2/org/jmock/jmock/2.5.1/jmock-2.5.1-sources.jar --slot 0 --keywords "~amd64" --ebuild jmock-2.5.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/jmock/jmock/2.5.1/jmock-2.5.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.jmock:jmock:2.5.1"

# Common dependencies
# POM: ../poms/jmock-2.5.1.pom
# org.hamcrest:hamcrest-core:1.1 -> >=app-maven/hamcrest-core-1.1:0
# org.hamcrest:hamcrest-library:1.1 -> >=app-maven/hamcrest-library-1.1:0
# POM: ../poms/jmock-2.5.1.pom
CDEPEND="
	>=app-maven/hamcrest-core-1.1:0
	>=app-maven/hamcrest-library-1.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="hamcrest-core,hamcrest-library"
