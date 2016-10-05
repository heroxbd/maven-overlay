# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jetty-util-6.1.26.pom --download-uri http://central.maven.org/maven2/org/mortbay/jetty/jetty-util/6.1.26/jetty-util-6.1.26-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-util-6.1.26.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Utility classes for Jetty"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-parent/project/jetty-util"
SRC_URI="http://central.maven.org/maven2/org/mortbay/jetty/jetty-util/6.1.26/jetty-util-6.1.26-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.mortbay.jetty:jetty-util:6.1.26"

# Common dependencies
# POM: ../poms/jetty-util-6.1.26.pom
# org.slf4j:slf4j-api:1.3.1 -> >=dev-java/slf4j-api-1.7.7:0
# POM: ../poms/jetty-util-6.1.26.pom
CDEPEND="
	>=dev-java/slf4j-api-1.7.7:0"
# Compile dependencies
# POM: ../poms/jetty-util-6.1.26.pom
# org.mortbay.jetty:servlet-api:2.5-20081211 -> >=app-maven/servlet-api-2.5.20081211:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/servlet-api-2.5.20081211:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="slf4j-api"
JAVA_CLASSPATH_EXTRA="servlet-api"
