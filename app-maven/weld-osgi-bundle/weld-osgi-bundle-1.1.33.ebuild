# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-osgi-bundle-1.1.33.Final.pom --download-uri http://central.maven.org/maven2/org/jboss/weld/weld-osgi-bundle/1.1.33.Final/weld-osgi-bundle-1.1.33.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild weld-osgi-bundle-1.1.33.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Weld runtime packaged as an OSGi bundle"
HOMEPAGE="http://www.seamframework.org/Weld"
SRC_URI="http://central.maven.org/maven2/org/jboss/weld/weld-osgi-bundle/1.1.33.Final/weld-osgi-bundle-1.1.33.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.weld:weld-osgi-bundle:1.1.33.Final"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-osgi-bundle-1.1.33.Final.pom
# com.google.guava:guava:13.0.1 -> >=dev-java/guava-10.0.1:10
# javax.enterprise:cdi-api:1.0-SP4 -> >=app-maven/cdi-api-1.0:0
# javax.inject:javax.inject:1 -> >=dev-java/javax-inject-1:0
# org.javassist:javassist:3.18.1-GA -> >=dev-java/javassist-3.18.2:3
# org.jboss.weld:weld-api:1.1.Final -> >=app-maven/weld-api-1.1:0
# org.jboss.weld:weld-core:1.1.33.Final -> >=app-maven/weld-core-1.1.33:0
# org.jboss.weld:weld-spi:1.1.Final -> >=app-maven/weld-spi-1.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-osgi-bundle-1.1.33.Final.pom
CDEPEND="
	>=app-maven/cdi-api-1.0:0
	>=app-maven/weld-api-1.1:0
	>=app-maven/weld-core-1.1.33:0
	>=app-maven/weld-spi-1.1:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/javassist-3.18.2:3
	>=dev-java/javax-inject-1:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-osgi-bundle-1.1.33.Final.pom
# org.slf4j:slf4j-jdk14:1.7.2 -> >=dev-java/slf4j-log4j12-1.7.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/slf4j-log4j12-1.7.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10,cdi-api,javax-inject,javassist-3,weld-api,weld-core,weld-spi"
JAVA_CLASSPATH_EXTRA="slf4j-log4j12"
