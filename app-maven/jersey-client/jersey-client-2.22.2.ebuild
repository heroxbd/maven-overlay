# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-2.22.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/jersey/core/jersey-client/2.22.2/jersey-client-2.22.2-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-client-2.22.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey core client implementation"
HOMEPAGE="https://jersey.java.net/jersey-client/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/jersey/core/jersey-client/2.22.2/jersey-client-2.22.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.jersey.core:jersey-client:2.22.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-2.22.2.pom
# javax.ws.rs:javax.ws.rs-api:2.0.1 -> >=app-maven/javax-ws-rs-api-2.0.1:0
# org.glassfish.hk2:hk2-api:2.4.0-b34 -> >=app-maven/hk2-api-2.4.0_beta34:0
# org.glassfish.hk2:hk2-locator:2.4.0-b34 -> >=app-maven/hk2-locator-2.4.0_beta34:0
# org.glassfish.hk2.external:javax.inject:2.4.0-b34 -> >=app-maven/javax-inject-2.4.0_beta34:0
# org.glassfish.jersey.core:jersey-common:2.22.2 -> >=app-maven/jersey-common-2.22.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-2.22.2.pom
CDEPEND="
	>=app-maven/hk2-api-2.4.0_beta34:0
	>=app-maven/hk2-locator-2.4.0_beta34:0
	>=app-maven/javax-inject-2.4.0_beta34:0
	>=app-maven/javax-ws-rs-api-2.0.1:0
	>=app-maven/jersey-common-2.22.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-ws-rs-api,hk2-api,hk2-locator,javax-inject,jersey-common"
