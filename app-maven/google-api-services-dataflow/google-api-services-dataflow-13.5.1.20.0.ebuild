# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-dataflow-v1b3-rev5-1.20.0.pom --download-uri http://central.maven.org/maven2/com/google/apis/google-api-services-dataflow/v1b3-rev5-1.20.0/google-api-services-dataflow-v1b3-rev5-1.20.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-api-services-dataflow-13.5.1.20.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="http://nexus.sonatype.org/oss-repository-hosting.html/google-api-services-dataflow"
SRC_URI="http://central.maven.org/maven2/com/google/apis/google-api-services-dataflow/v1b3-rev5-1.20.0/google-api-services-dataflow-v1b3-rev5-1.20.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.apis:google-api-services-dataflow:v1b3-rev5-1.20.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-dataflow-v1b3-rev5-1.20.0.pom
# com.google.api-client:google-api-client:1.20.0 -> >=app-maven/google-api-client-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-dataflow-v1b3-rev5-1.20.0.pom
CDEPEND="
	>=app-maven/google-api-client-1.22.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client"
