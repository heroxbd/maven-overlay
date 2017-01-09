# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdo2-api-2.3-eb.pom --download-uri http://central.maven.org/maven2/javax/jdo/jdo2-api/2.3-eb/jdo2-api-2.3-eb-sources.jar --slot 0 --keywords "~amd64" --ebuild jdo2-api-2.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Java Data Objects 2 (JDO) API is a standard interface-based Java model abstraction of persistence, developed as Java Specification Request 243 under the auspices of the Java Community Process."
HOMEPAGE="http://db.apache.org/jdo/index.html"
SRC_URI="http://central.maven.org/maven2/javax/jdo/jdo2-api/2.3-eb/jdo2-api-2.3-eb-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="javax.jdo:jdo2-api:2.3-eb"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdo2-api-2.3-eb.pom
# javax.transaction:transaction-api:1.1 -> >=app-maven/transaction-api-1.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdo2-api-2.3-eb.pom
CDEPEND="
	>=app-maven/transaction-api-1.1:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdo2-api-2.3-eb.pom
# org.apache.geronimo.specs:geronimo-jpa_3.0_spec:1.0 -> >=app-maven/geronimo-jpa-1.1.1:3.0_spec
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/geronimo-jpa-1.1.1:3.0_spec"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="transaction-api"
JAVA_CLASSPATH_EXTRA="geronimo-jpa-3.0_spec"
