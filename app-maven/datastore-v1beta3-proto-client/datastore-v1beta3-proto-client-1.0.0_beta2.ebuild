# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/datastore-v1beta3-proto-client-1.0.0-beta.2.pom --download-uri http://central.maven.org/maven2/com/google/cloud/datastore/datastore-v1beta3-proto-client/1.0.0-beta.2/datastore-v1beta3-proto-client-1.0.0-beta.2-sources.jar --slot 0 --keywords "~amd64" --ebuild datastore-v1beta3-proto-client-1.0.0_beta2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Low level client for accessing Google Cloud Datastore v1beta3."
HOMEPAGE="https://cloud.google.com/datastore/datastore-v1beta3-proto-client/"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/datastore/datastore-v1beta3-proto-client/1.0.0-beta.2/datastore-v1beta3-proto-client-1.0.0-beta.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.datastore:datastore-v1beta3-proto-client:1.0.0-beta.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/datastore-v1beta3-proto-client-1.0.0-beta.2.pom
# com.google.api-client:google-api-client:1.20.0 -> >=app-maven/google-api-client-1.22.0:0
# com.google.cloud.datastore:datastore-v1beta3-protos:1.0.0-beta -> >=app-maven/datastore-v1beta3-protos-1.0.0_beta:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# com.google.http-client:google-http-client:1.20.0 -> >=app-maven/google-http-client-1.22.0:0
# com.google.http-client:google-http-client-jackson:1.20.0 -> >=app-maven/google-http-client-jackson-1.21.0:0
# com.google.http-client:google-http-client-protobuf:1.20.0 -> >=app-maven/google-http-client-protobuf-1.20.0:0
# com.google.oauth-client:google-oauth-client:1.20.0 -> >=app-maven/google-oauth-client-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/datastore-v1beta3-proto-client-1.0.0-beta.2.pom
CDEPEND="
	>=app-maven/datastore-v1beta3-protos-1.0.0_beta:0
	>=app-maven/google-api-client-1.22.0:0
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/google-http-client-jackson-1.21.0:0
	>=app-maven/google-http-client-protobuf-1.20.0:0
	>=app-maven/google-oauth-client-1.22.0:0
	>=dev-java/guava-10.0.1:10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client,datastore-v1beta3-protos,guava-10,google-http-client,google-http-client-jackson,google-http-client-protobuf,google-oauth-client"
