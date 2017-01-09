# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-datastore-protobuf-v1beta2-rev1-2.1.2.pom --download-uri http://central.maven.org/maven2/com/google/apis/google-api-services-datastore-protobuf/v1beta2-rev1-2.1.2/google-api-services-datastore-protobuf-v1beta2-rev1-2.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild google-api-services-datastore-protobuf-1.2.1.2.1.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="https://github.com/GoogleCloudPlatform/google-cloud-datastore"
SRC_URI="http://central.maven.org/maven2/com/google/apis/google-api-services-datastore-protobuf/v1beta2-rev1-2.1.2/google-api-services-datastore-protobuf-v1beta2-rev1-2.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.apis:google-api-services-datastore-protobuf:v1beta2-rev1-2.1.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-datastore-protobuf-v1beta2-rev1-2.1.2.pom
# com.google.api-client:google-api-client:1.15.0-rc -> >=app-maven/google-api-client-1.22.0:0
# com.google.http-client:google-http-client:1.15.0-rc -> >=app-maven/google-http-client-1.22.0:0
# com.google.http-client:google-http-client-jackson:1.15.0-rc -> >=app-maven/google-http-client-jackson-1.21.0:0
# com.google.http-client:google-http-client-protobuf:1.15.0-rc -> >=app-maven/google-http-client-protobuf-1.20.0:0
# com.google.oauth-client:google-oauth-client:1.15.0-rc -> >=app-maven/google-oauth-client-1.22.0:0
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-datastore-protobuf-v1beta2-rev1-2.1.2.pom
CDEPEND="
	>=app-maven/google-api-client-1.22.0:0
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/google-http-client-jackson-1.21.0:0
	>=app-maven/google-http-client-protobuf-1.20.0:0
	>=app-maven/google-oauth-client-1.22.0:0
	>=app-maven/protobuf-java-2.5.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client,google-http-client,google-http-client-jackson,google-http-client-protobuf,google-oauth-client,protobuf-java"
