# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jersey-server-2.22.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/jersey/core/jersey-server/2.22.2/jersey-server-2.22.2-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-server-2.22.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey core server implementation"
HOMEPAGE="https://jersey.java.net/jersey-server/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/jersey/core/jersey-server/2.22.2/jersey-server-2.22.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.glassfish.jersey.core:jersey-server:2.22.2"

# Common dependencies
# POM: ../poms/jersey-server-2.22.2.pom
# javax.annotation:javax.annotation-api:1.2 -> >=app-maven/javax-annotation-api-1.2:0
# javax.validation:validation-api:1.1.0.Final -> >=app-maven/validation-api-1.0.0:0
# javax.ws.rs:javax.ws.rs-api:2.0.1 -> >=app-maven/javax-ws-rs-api-2.0.1:0
# org.glassfish.hk2:hk2-api:2.4.0-b34 -> >=app-maven/hk2-api-2.4.0_beta34:0
# org.glassfish.hk2:hk2-locator:2.4.0-b34 -> >=app-maven/hk2-locator-2.4.0_beta34:0
# org.glassfish.hk2.external:javax.inject:2.4.0-b34 -> >=app-maven/javax-inject-2.4.0_beta34:0
# org.glassfish.jersey.core:jersey-client:2.22.2 -> >=app-maven/jersey-client-2.22.2:0
# org.glassfish.jersey.core:jersey-common:2.22.2 -> >=app-maven/jersey-common-2.22.2:0
# org.glassfish.jersey.media:jersey-media-jaxb:2.22.2 -> >=app-maven/jersey-media-jaxb-2.22.2:0
# org.ow2.asm:asm-debug-all:5.0.4 -> >=dev-java/asm-5.0.3:4
# POM: ../poms/jersey-server-2.22.2.pom
CDEPEND="
	>=app-maven/hk2-api-2.4.0_beta34:0
	>=app-maven/hk2-locator-2.4.0_beta34:0
	>=app-maven/javax-annotation-api-1.2:0
	>=app-maven/javax-inject-2.4.0_beta34:0
	>=app-maven/javax-ws-rs-api-2.0.1:0
	>=app-maven/jersey-client-2.22.2:0
	>=app-maven/jersey-common-2.22.2:0
	>=app-maven/jersey-media-jaxb-2.22.2:0
	>=app-maven/validation-api-1.0.0:0
	>=dev-java/asm-5.0.3:4"
# Compile dependencies
# POM: ../poms/jersey-server-2.22.2.pom
# org.osgi:org.osgi.core:4.2.0 -> >=app-maven/org-osgi-core-4.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/org-osgi-core-4.2.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-annotation-api,validation-api,javax-ws-rs-api,hk2-api,hk2-locator,javax-inject,jersey-client,jersey-common,jersey-media-jaxb,asm-4"
JAVA_CLASSPATH_EXTRA="org-osgi-core"
