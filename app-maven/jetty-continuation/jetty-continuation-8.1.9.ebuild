# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jetty-continuation-8.1.9.v20130131.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/jetty-continuation/8.1.9.v20130131/jetty-continuation-8.1.9.v20130131-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-continuation-8.1.9.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Asynchronous API"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-continuation"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/jetty-continuation/8.1.9.v20130131/jetty-continuation-8.1.9.v20130131-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.eclipse.jetty:jetty-continuation:8.1.9.v20130131"
# Compile dependencies
# POM: ../poms/jetty-continuation-8.1.9.v20130131.pom
# org.eclipse.jetty.orbit:javax.servlet:3.0.0.v201112011016 -> >=app-maven/javax-servlet-3.0.0:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/javax-servlet-3.0.0:0
	>=app-maven/jetty-util-6.1.26:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="javax-servlet,jetty-util"
