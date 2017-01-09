# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-utils-v1beta2-0.30.pom --download-uri http://central.maven.org/maven2/com/google/cloud/genomics/google-genomics-utils/v1beta2-0.30/google-genomics-utils-v1beta2-0.30-sources.jar --slot 0 --keywords "~amd64" --ebuild google-genomics-utils-1.2.0.30.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Common Java files for Google Genomics integrations."
HOMEPAGE="https://github.com/googlegenomics/utils-java"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/genomics/google-genomics-utils/v1beta2-0.30/google-genomics-utils-v1beta2-0.30-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.genomics:google-genomics-utils:v1beta2-0.30"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-utils-v1beta2-0.30.pom
# com.github.samtools:htsjdk:1.128 -> >=app-maven/htsjdk-2.6.0:0
# com.google.api-client:google-api-client-java6:1.19.0 -> >=app-maven/google-api-client-java6-1.20.0:0
# com.google.apis:google-api-services-genomics:v1beta2-rev25-1.19.1 -> >=app-maven/google-api-services-genomics-1.90.1.22.0:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# com.google.http-client:google-http-client-jackson2:1.19.0 -> >=app-maven/google-http-client-jackson2-1.22.0:0
# com.google.oauth-client:google-oauth-client-jetty:1.19.0 -> >=app-maven/google-oauth-client-jetty-1.19.0:0
# io.grpc:grpc-all:0.7.1 -> >=app-maven/grpc-all-0.9.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-utils-v1beta2-0.30.pom
CDEPEND="
	>=app-maven/google-api-client-java6-1.20.0:0
	>=app-maven/google-api-services-genomics-1.90.1.22.0:0
	>=app-maven/google-http-client-jackson2-1.22.0:0
	>=app-maven/google-oauth-client-jetty-1.19.0:0
	>=app-maven/grpc-all-0.9.0:0
	>=app-maven/htsjdk-2.6.0:0
	>=dev-java/guava-10.0.1:10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="htsjdk,google-api-client-java6,google-api-services-genomics,guava-10,google-http-client-jackson2,google-oauth-client-jetty,grpc-all"
