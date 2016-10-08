# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.xml.rpc-3.1.pom --download-uri http://central.maven.org/maven2/org/glassfish/javax.xml.rpc/3.1/javax.xml.rpc-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-xml-rpc-3.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JAX-RPC API Repackaged as OSGi bundle in GlassFish"
HOMEPAGE="http://glassfish.org/glassfish-parent/javaee-api/javax.xml.rpc/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/javax.xml.rpc/3.1/javax.xml.rpc-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish:javax.xml.rpc:3.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.xml.rpc-3.1.pom
# javax.xml:jaxrpc-api:1.1 -> >=app-maven/jaxrpc-api-bin-1.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.xml.rpc-3.1.pom
CDEPEND="
	>=app-maven/jaxrpc-api-bin-1.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jaxrpc-api-bin"
