# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-servlet-8.1.14.v20131031.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/jetty-servlet/8.1.14.v20131031/jetty-servlet-8.1.14.v20131031-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-servlet-8.1.14_p20131031.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jetty Servlet Container"
HOMEPAGE="http://www.eclipse.org/jetty"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/jetty-servlet/8.1.14.v20131031/jetty-servlet-8.1.14.v20131031-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty:jetty-servlet:8.1.14.v20131031"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-servlet-8.1.14.v20131031.pom
# org.eclipse.jetty:jetty-jmx:8.1.14.v20131031 -> >=app-maven/jetty-jmx-8.1.9:0
# org.eclipse.jetty:jetty-security:8.1.14.v20131031 -> >=app-maven/jetty-security-8.1.14:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-servlet-8.1.14.v20131031.pom
CDEPEND="
	>=app-maven/jetty-jmx-8.1.9:0
	>=app-maven/jetty-security-8.1.14:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jetty-jmx,jetty-security"
