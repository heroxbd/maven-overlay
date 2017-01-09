# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-dataflow-v1beta2-0.15.pom --download-uri http://central.maven.org/maven2/com/google/cloud/genomics/google-genomics-dataflow/v1beta2-0.15/google-genomics-dataflow-v1beta2-0.15-sources.jar --slot 0 --keywords "~amd64" --ebuild google-genomics-dataflow-1.2.0.15.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Google Genomics Dataflow pipelines."
HOMEPAGE="https://github.com/googlegenomics/dataflow-java"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/genomics/google-genomics-dataflow/v1beta2-0.15/google-genomics-dataflow-v1beta2-0.15-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.genomics:google-genomics-dataflow:v1beta2-0.15"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-dataflow-v1beta2-0.15.pom
# com.github.samtools:htsjdk:1.128 -> >=app-maven/htsjdk-2.6.0:0
# com.google.api-client:google-api-client:1.19.0 -> >=app-maven/google-api-client-1.22.0:0
# com.google.apis:google-api-services-genomics:v1beta2-rev25-1.19.1 -> >=app-maven/google-api-services-genomics-1.90.1.22.0:0
# com.google.cloud.dataflow:google-cloud-dataflow-java-sdk-all:0.4.150727 -> >=app-maven/google-cloud-dataflow-java-sdk-all-0.4.150727:0
# com.google.cloud.genomics:gatk-tools-java:1.0 -> >=app-maven/gatk-tools-java-1.1:0
# com.google.cloud.genomics:google-genomics-utils:v1beta2-0.30 -> >=app-maven/google-genomics-utils-1.2.0.19:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# com.google.http-client:google-http-client:1.19.0 -> >=app-maven/google-http-client-1.22.0:0
# com.google.http-client:google-http-client-jackson2:1.19.0 -> >=app-maven/google-http-client-jackson2-1.22.0:0
# com.google.oauth-client:google-oauth-client:1.19.0 -> >=app-maven/google-oauth-client-1.22.0:0
# com.google.oauth-client:google-oauth-client-java6:1.19.0 -> >=app-maven/google-oauth-client-java6-1.20.0:0
# com.google.oauth-client:google-oauth-client-jetty:1.19.0 -> >=app-maven/google-oauth-client-jetty-1.19.0:0
# com.google.protobuf:protobuf-java:3.0.0-alpha-3 -> >=app-maven/protobuf-java-2.5.0:0
# gov.nist.math.jama:gov.nist.math.jama:1.1.1 -> >=app-maven/gov-nist-math-jama-1.1.1:0
# org.reflections:reflections:0.9.9 -> >=app-maven/reflections-0.9.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-dataflow-v1beta2-0.15.pom
CDEPEND="
	>=app-maven/gatk-tools-java-1.1:0
	>=app-maven/google-api-client-1.22.0:0
	>=app-maven/google-api-services-genomics-1.90.1.22.0:0
	>=app-maven/google-cloud-dataflow-java-sdk-all-0.4.150727:0
	>=app-maven/google-genomics-utils-1.2.0.19:0
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/google-http-client-jackson2-1.22.0:0
	>=app-maven/google-oauth-client-1.22.0:0
	>=app-maven/google-oauth-client-java6-1.20.0:0
	>=app-maven/google-oauth-client-jetty-1.19.0:0
	>=app-maven/gov-nist-math-jama-1.1.1:0
	>=app-maven/htsjdk-2.6.0:0
	>=app-maven/protobuf-java-2.5.0:0
	>=app-maven/reflections-0.9.9:0
	>=dev-java/guava-10.0.1:10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"
# Runtime dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-genomics-dataflow-v1beta2-0.15.pom
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# org.mortbay.jetty:jetty:6.1.26 -> >=app-maven/jetty-6.1.26:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=app-maven/jetty-6.1.26:0
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/servlet-api-2.5:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="htsjdk,google-api-client,google-api-services-genomics,google-cloud-dataflow-java-sdk-all,gatk-tools-java,google-genomics-utils,guava-10,google-http-client,google-http-client-jackson2,google-oauth-client,google-oauth-client-java6,google-oauth-client-jetty,protobuf-java,gov-nist-math-jama,reflections,servlet-api,jetty,jetty-util"
