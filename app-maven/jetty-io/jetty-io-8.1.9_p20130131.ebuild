# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-io-8.1.9.v20130131.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/jetty-io/8.1.9.v20130131/jetty-io-8.1.9.v20130131-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-io-8.1.9_p20130131.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Administrative parent pom for Jetty modules"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-io"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/jetty-io/8.1.9.v20130131/jetty-io-8.1.9.v20130131-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty:jetty-io:8.1.9.v20130131"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-io-8.1.9.v20130131.pom
# org.eclipse.jetty:jetty-util:8.1.9.v20130131 -> >=app-maven/jetty-util-8.1.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-io-8.1.9.v20130131.pom
CDEPEND="
	>=app-maven/jetty-util-8.1.9:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jetty-util"
