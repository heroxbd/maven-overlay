# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-6.1.26.pom --download-uri http://central.maven.org/maven2/org/mortbay/jetty/jetty/6.1.26/jetty-6.1.26-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-6.1.26.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jetty server core"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-parent/project/jetty"
SRC_URI="http://central.maven.org/maven2/org/mortbay/jetty/jetty/6.1.26/jetty-6.1.26-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.mortbay.jetty:jetty:6.1.26"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-6.1.26.pom
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
# org.mortbay.jetty:servlet-api:2.5-20081211 -> >=app-maven/servlet-api-2.5.20081211:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-6.1.26.pom
CDEPEND="
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/servlet-api-2.5.20081211:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jetty-util,servlet-api"
