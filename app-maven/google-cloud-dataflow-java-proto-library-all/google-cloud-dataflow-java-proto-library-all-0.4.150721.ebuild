# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-proto-library-all-0.4.150721.pom --download-uri http://central.maven.org/maven2/com/google/cloud/dataflow/google-cloud-dataflow-java-proto-library-all/0.4.150721/google-cloud-dataflow-java-proto-library-all-0.4.150721-sources.jar --slot 0 --keywords "~amd64" --ebuild google-cloud-dataflow-java-proto-library-all-0.4.150721.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Google Cloud Dataflow Java SDK provides a simple, Java-based
    interface for processing virtually any size data using Google cloud
    resources. This artifact includes all generated Java Protocol Buffer
    libraries."
HOMEPAGE="http://cloud.google.com/dataflow"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/dataflow/google-cloud-dataflow-java-proto-library-all/0.4.150721/google-cloud-dataflow-java-proto-library-all-0.4.150721-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.dataflow:google-cloud-dataflow-java-proto-library-all:0.4.150721"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-proto-library-all-0.4.150721.pom
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-proto-library-all-0.4.150721.pom
CDEPEND="
	>=app-maven/protobuf-java-2.5.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java"
