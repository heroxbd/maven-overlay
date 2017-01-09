# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/util-1.4.1.pom --download-uri http://central.maven.org/maven2/com/google/cloud/bigdataoss/util/1.4.1/util-1.4.1-sources.jar --slot 0 --keywords "~amd64" --ebuild util-1.4.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Parent project for Google Cloud Platform Big-Data connectors."
HOMEPAGE="https://github.com/GoogleCloudPlatform/BigData-interop/util/"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/bigdataoss/util/1.4.1/util-1.4.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.bigdataoss:util:1.4.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/util-1.4.1.pom
# com.google.api-client:google-api-client-jackson2:1.20.0 -> >=app-maven/google-api-client-jackson2-1.20.0:0
# com.google.api-client:google-api-client-java6:1.20.0 -> >=app-maven/google-api-client-java6-1.20.0:0
# com.google.apis:google-api-services-storage:v1-rev35-1.20.0 -> >=app-maven/google-api-services-storage-1.62.1.21.0:0
# com.google.code.findbugs:jsr305:2.0.3 -> >=app-maven/jsr305-bin-1.3.9:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# com.google.oauth-client:google-oauth-client:1.20.0 -> >=app-maven/google-oauth-client-1.22.0:0
# com.google.oauth-client:google-oauth-client-java6:1.20.0 -> >=app-maven/google-oauth-client-java6-1.20.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/util-1.4.1.pom
CDEPEND="
	>=app-maven/google-api-client-jackson2-1.20.0:0
	>=app-maven/google-api-client-java6-1.20.0:0
	>=app-maven/google-api-services-storage-1.62.1.21.0:0
	>=app-maven/google-oauth-client-1.22.0:0
	>=app-maven/google-oauth-client-java6-1.20.0:0
	>=app-maven/jsr305-bin-1.3.9:0
	>=dev-java/guava-10.0.1:10"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/util-1.4.1.pom
# junit:junit:4.11 -> >=dev-java/junit-4.12:4
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-log4j12-1.7.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/junit-4.12:4
	>=dev-java/slf4j-log4j12-1.7.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client-jackson2,google-api-client-java6,google-api-services-storage,jsr305-bin,guava-10,google-oauth-client,google-oauth-client-java6"
JAVA_CLASSPATH_EXTRA="junit-4,slf4j-log4j12"
