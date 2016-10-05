# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/hamcrest-core-1.1.pom --download-uri http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.1/hamcrest-core-1.1-sources.jar --slot 0 --keywords "~amd64" --ebuild hamcrest-core-1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.1/hamcrest-core-1.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.hamcrest:hamcrest-core:1.1"
# Compile dependencies
# POM: ../poms/hamcrest-core-1.1.pom
# jmock:jmock:1.1.0 -> >=app-maven/jmock-1.1.0:0
# junit:junit:4.0 -> >=dev-java/junit-4.12:4
# org.easymock:easymock:2.2 -> >=app-maven/easymock-3.1:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/easymock-3.1:0
	>=app-maven/jmock-1.1.0:0
	>=dev-java/junit-4.12:4"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="jmock,junit-4,easymock"
