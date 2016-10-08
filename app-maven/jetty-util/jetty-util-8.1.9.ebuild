# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-util-8.1.9.v20130131.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/jetty-util/8.1.9.v20130131/jetty-util-8.1.9.v20130131-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-util-8.1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Utility classes for Jetty"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-util"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/jetty-util/8.1.9.v20130131/jetty-util-8.1.9.v20130131-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty:jetty-util:8.1.9.v20130131"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-util-8.1.9.v20130131.pom
# org.eclipse.jetty.orbit:javax.servlet:3.0.0.v201112011016 -> >=app-maven/javax-servlet-3.0.0:0
# org.slf4j:slf4j-api:1.6.1 -> >=dev-java/slf4j-nop-1.7.7:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/javax-servlet-3.0.0:0
	>=dev-java/slf4j-nop-1.7.7:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="javax-servlet,slf4j-nop"
