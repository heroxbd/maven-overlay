# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-1.22.0.pom --download-uri http://central.maven.org/maven2/com/google/api-client/google-api-client/1.22.0/google-api-client-1.22.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-api-client-1.22.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="https://github.com/google/google-api-java-client/google-api-client"
SRC_URI="http://central.maven.org/maven2/com/google/api-client/google-api-client/1.22.0/google-api-client-1.22.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.api-client:google-api-client:1.22.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-1.22.0.pom
# com.google.guava:guava-jdk5:17.0 -> >=app-maven/guava-jdk5-17.0:0
# com.google.http-client:google-http-client-jackson2:1.22.0 -> >=app-maven/google-http-client-jackson2-1.22.0:0
# com.google.oauth-client:google-oauth-client:1.22.0 -> >=app-maven/google-oauth-client-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-1.22.0.pom
CDEPEND="
	>=app-maven/google-http-client-jackson2-1.22.0:0
	>=app-maven/google-oauth-client-1.22.0:0
	>=app-maven/guava-jdk5-17.0:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-1.22.0.pom
# commons-codec:commons-codec:1.6 -> >=dev-java/commons-codec-1.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/commons-codec-1.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-jdk5,google-http-client-jackson2,google-oauth-client"
JAVA_CLASSPATH_EXTRA="commons-codec"
