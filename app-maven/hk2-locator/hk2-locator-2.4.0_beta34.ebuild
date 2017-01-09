# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hk2-locator-2.4.0-b34.pom --download-uri http://central.maven.org/maven2/org/glassfish/hk2/hk2-locator/2.4.0-b34/hk2-locator-2.4.0-b34-sources.jar --slot 0 --keywords "~amd64" --ebuild hk2-locator-2.4.0_beta34.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="ServiceLocator Default Implementation"
HOMEPAGE="https://hk2.java.net/hk2-locator"
SRC_URI="http://central.maven.org/maven2/org/glassfish/hk2/hk2-locator/2.4.0-b34/hk2-locator-2.4.0-b34-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.hk2:hk2-locator:2.4.0-b34"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hk2-locator-2.4.0-b34.pom
# org.glassfish.hk2:hk2-api:2.4.0-b34 -> >=app-maven/hk2-api-2.4.0:0
# org.glassfish.hk2:hk2-utils:2.4.0-b34 -> >=app-maven/hk2-utils-2.4.0:0
# org.glassfish.hk2.external:aopalliance-repackaged:2.4.0-b34 -> >=app-maven/aopalliance-repackaged-2.4.0:0
# org.glassfish.hk2.external:javax.inject:2.4.0-b34 -> >=app-maven/javax-inject-2.4.0:0
# org.javassist:javassist:3.18.1-GA -> >=dev-java/javassist-3.18.2:3
# org.jvnet:tiger-types:1.4 -> >=app-maven/tiger-types-1.4:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hk2-locator-2.4.0-b34.pom
CDEPEND="
	>=app-maven/aopalliance-repackaged-2.4.0:0
	>=app-maven/hk2-api-2.4.0:0
	>=app-maven/hk2-utils-2.4.0:0
	>=app-maven/javax-inject-2.4.0:0
	>=app-maven/tiger-types-1.4:0
	>=dev-java/javassist-3.18.2:3"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="hk2-api,hk2-utils,aopalliance-repackaged,javax-inject,javassist-3,tiger-types"
