# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-jexl-2.1.1.pom --download-uri http://central.maven.org/maven2/org/apache/commons/commons-jexl/2.1.1/commons-jexl-2.1.1-sources.jar --slot 0 --keywords "~amd64" --ebuild commons-jexl-2.1.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Commons Jexl library is an implementation of the JSTL Expression Language with extensions."
HOMEPAGE="http://commons.apache.org/jexl/"
SRC_URI="http://central.maven.org/maven2/org/apache/commons/commons-jexl/2.1.1/commons-jexl-2.1.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.commons:commons-jexl:2.1.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-jexl-2.1.1.pom
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-jexl-2.1.1.pom
CDEPEND="
	>=dev-java/commons-logging-1.2:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-jexl-2.1.1.pom
# org.apache.bsf:bsf-api:3.1 -> >=app-maven/bsf-api-3.1:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/bsf-api-3.1:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-logging"
JAVA_CLASSPATH_EXTRA="bsf-api"
JAVA_ENCODING="iso-8859-1"
