# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-container-servlet-2.22.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/jersey/containers/jersey-container-servlet/2.22.2/jersey-container-servlet-2.22.2-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-container-servlet-2.22.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey core Servlet 3.x implementation"
HOMEPAGE="https://jersey.java.net/project/jersey-container-servlet/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/jersey/containers/jersey-container-servlet/2.22.2/jersey-container-servlet-2.22.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.jersey.containers:jersey-container-servlet:2.22.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-container-servlet-2.22.2.pom
# javax.ws.rs:javax.ws.rs-api:2.0.1 -> >=app-maven/javax-ws-rs-api-2.0.1:0
# org.glassfish.jersey.containers:jersey-container-servlet-core:2.22.2 -> >=app-maven/jersey-container-servlet-core-2.22.2:0
# org.glassfish.jersey.core:jersey-common:2.22.2 -> >=app-maven/jersey-common-2.22.2:0
# org.glassfish.jersey.core:jersey-server:2.22.2 -> >=app-maven/jersey-server-2.22.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-container-servlet-2.22.2.pom
CDEPEND="
	>=app-maven/javax-ws-rs-api-2.0.1:0
	>=app-maven/jersey-common-2.22.2:0
	>=app-maven/jersey-container-servlet-core-2.22.2:0
	>=app-maven/jersey-server-2.22.2:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-container-servlet-2.22.2.pom
# javax.servlet:javax.servlet-api:3.0.1 -> >=app-maven/javax-servlet-api-3.1.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/javax-servlet-api-3.1.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-ws-rs-api,jersey-container-servlet-core,jersey-common,jersey-server"
JAVA_CLASSPATH_EXTRA="javax-servlet-api"
