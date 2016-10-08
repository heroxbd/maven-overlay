# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.ejb-3.1.pom --download-uri http://central.maven.org/maven2/org/glassfish/javax.ejb/3.1/javax.ejb-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-ejb-3.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Project GlassFish Enterprise JavaBean API"
HOMEPAGE="http://glassfish.org/glassfish-parent/api-pom/javax.ejb/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/javax.ejb/3.1/javax.ejb-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish:javax.ejb:3.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.ejb-3.1.pom
# org.glassfish:javax.annotation:3.1 -> >=app-maven/javax-annotation-3.1:0
# org.glassfish:javax.transaction:3.1 -> >=app-maven/javax-transaction-3.1:0
# org.glassfish:javax.xml.rpc:3.1 -> >=app-maven/javax-xml-rpc-3.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.ejb-3.1.pom
CDEPEND="
	>=app-maven/javax-annotation-3.1:0
	>=app-maven/javax-transaction-3.1:0
	>=app-maven/javax-xml-rpc-3.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-annotation,javax-transaction,javax-xml-rpc"
