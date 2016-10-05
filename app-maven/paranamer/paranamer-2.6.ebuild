# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/paranamer-2.6.pom --download-uri http://central.maven.org/maven2/com/thoughtworks/paranamer/paranamer/2.6/paranamer-2.6-sources.jar --slot 0 --keywords "~amd64" --ebuild paranamer-2.6.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Paranamer allows runtime access to constructor and method parameter names for Java classes"
HOMEPAGE="http://paranamer.codehaus.org/paranamer"
SRC_URI="http://central.maven.org/maven2/com/thoughtworks/paranamer/paranamer/2.6/paranamer-2.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.thoughtworks.paranamer:paranamer:2.6"

# Common dependencies
# POM: ../poms/paranamer-2.6.pom
# javax.inject:javax.inject:1 -> >=dev-java/javax-inject-1:0
# POM: ../poms/paranamer-2.6.pom
CDEPEND="
	>=dev-java/javax-inject-1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-inject"
