# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/bdg-formats-0.5.0.pom --download-uri http://central.maven.org/maven2/org/bdgenomics/bdg-formats/bdg-formats/0.5.0/bdg-formats-0.5.0-sources.jar --slot 0 --keywords "~amd64" --ebuild bdg-formats-0.5.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="http://www.bdgenomics.org"
SRC_URI="http://central.maven.org/maven2/org/bdgenomics/bdg-formats/bdg-formats/0.5.0/bdg-formats-0.5.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.bdgenomics.bdg-formats:bdg-formats:0.5.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/bdg-formats-0.5.0.pom
# org.apache.avro:avro:1.7.4 -> >=app-maven/avro-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/bdg-formats-0.5.0.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="avro"
