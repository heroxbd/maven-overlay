# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/datastore-v1beta3-protos-1.0.0-beta.pom --download-uri http://central.maven.org/maven2/com/google/cloud/datastore/datastore-v1beta3-protos/1.0.0-beta/datastore-v1beta3-protos-1.0.0-beta-sources.jar --slot 0 --keywords "~amd64" --ebuild datastore-v1beta3-protos-1.0.0_beta.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Protocol buffers for accessing the Google Cloud Datastore API."
HOMEPAGE="https://cloud.google.com/datastore/"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/datastore/datastore-v1beta3-protos/1.0.0-beta/datastore-v1beta3-protos-1.0.0-beta-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.datastore:datastore-v1beta3-protos:1.0.0-beta"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/datastore-v1beta3-protos-1.0.0-beta.pom
# com.google.protobuf:protobuf-java:3.0.0-beta-1 -> >=app-maven/protobuf-java-2.5.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/datastore-v1beta3-protos-1.0.0-beta.pom
CDEPEND="
	>=app-maven/protobuf-java-2.5.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java"
