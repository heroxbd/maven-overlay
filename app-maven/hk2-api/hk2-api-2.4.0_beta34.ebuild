# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/hk2-api-2.4.0-b34.pom --download-uri http://central.maven.org/maven2/org/glassfish/hk2/hk2-api/2.4.0-b34/hk2-api-2.4.0-b34-sources.jar --slot 0 --keywords "~amd64" --ebuild hk2-api-2.4.0_beta34.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="HK2 API module"
HOMEPAGE="https://hk2.java.net/hk2-api"
SRC_URI="http://central.maven.org/maven2/org/glassfish/hk2/hk2-api/2.4.0-b34/hk2-api-2.4.0-b34-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.glassfish.hk2:hk2-api:2.4.0-b34"

# Common dependencies
# POM: ../poms/hk2-api-2.4.0-b34.pom
# javax.inject:javax.inject:1 -> >=dev-java/javax-inject-1:0
# org.glassfish.hk2:hk2-utils:2.4.0-b34 -> >=app-maven/hk2-utils-2.4.0_beta34:0
# org.glassfish.hk2:osgi-resource-locator:1.0.1 -> >=app-maven/osgi-resource-locator-1.0.1:0
# org.glassfish.hk2.external:aopalliance-repackaged:2.4.0-b34 -> >=app-maven/aopalliance-repackaged-2.4.0_beta34:0
# POM: ../poms/hk2-api-2.4.0-b34.pom
CDEPEND="
	>=app-maven/aopalliance-repackaged-2.4.0_beta34:0
	>=app-maven/hk2-utils-2.4.0_beta34:0
	>=app-maven/osgi-resource-locator-1.0.1:0
	>=dev-java/javax-inject-1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-inject,hk2-utils,osgi-resource-locator,aopalliance-repackaged"
