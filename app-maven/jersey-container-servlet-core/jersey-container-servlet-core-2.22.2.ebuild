# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jersey-container-servlet-core-2.22.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/jersey/containers/jersey-container-servlet-core/2.22.2/jersey-container-servlet-core-2.22.2-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-container-servlet-core-2.22.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey core Servlet 2.x implementation"
HOMEPAGE="https://jersey.java.net/project/jersey-container-servlet-core/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/jersey/containers/jersey-container-servlet-core/2.22.2/jersey-container-servlet-core-2.22.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.glassfish.jersey.containers:jersey-container-servlet-core:2.22.2"

# Common dependencies
# POM: ../poms/jersey-container-servlet-core-2.22.2.pom
# javax.ws.rs:javax.ws.rs-api:2.0.1 -> >=app-maven/javax-ws-rs-api-2.0.1:0
# org.glassfish.hk2.external:javax.inject:2.4.0-b34 -> >=app-maven/javax-inject-2.4.0:0
# org.glassfish.jersey.core:jersey-common:2.22.2 -> >=app-maven/jersey-common-2.22.2:0
# org.glassfish.jersey.core:jersey-server:2.22.2 -> >=app-maven/jersey-server-2.22.2:0
# POM: ../poms/jersey-container-servlet-core-2.22.2.pom
CDEPEND="
	>=app-maven/javax-inject-2.4.0:0
	>=app-maven/javax-ws-rs-api-2.0.1:0
	>=app-maven/jersey-common-2.22.2:0
	>=app-maven/jersey-server-2.22.2:0"
# Compile dependencies
# POM: ../poms/jersey-container-servlet-core-2.22.2.pom
# javax.persistence:persistence-api:1.0 -> >=app-maven/persistence-api-1.0:0
# javax.servlet:servlet-api:2.4 -> >=app-maven/servlet-api-2.5:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/persistence-api-1.0:0
	>=app-maven/servlet-api-2.5:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-ws-rs-api,javax-inject,jersey-common,jersey-server"
JAVA_CLASSPATH_EXTRA="persistence-api,servlet-api"
