# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jetty-io-8.1.9.v20130131.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/jetty-io/8.1.9.v20130131/jetty-io-8.1.9.v20130131-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-io-8.1.9.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Administrative parent pom for Jetty modules"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-io"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/jetty-io/8.1.9.v20130131/jetty-io-8.1.9.v20130131-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.eclipse.jetty:jetty-io:8.1.9.v20130131"

# Common dependencies
# POM: ../poms/jetty-io-8.1.9.v20130131.pom
# org.eclipse.jetty:jetty-util:8.1.9.v20130131 -> >=app-maven/jetty-util-8.1.9:0
# POM: ../poms/jetty-io-8.1.9.v20130131.pom
CDEPEND="
	>=app-maven/jetty-util-8.1.9:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jetty-util"
