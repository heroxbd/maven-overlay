# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-protobuf-1.20.0.pom --download-uri http://central.maven.org/maven2/com/google/http-client/google-http-client-protobuf/1.20.0/google-http-client-protobuf-1.20.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-http-client-protobuf-1.20.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="https://github.com/google/google-http-java-client/google-http-client-protobuf"
SRC_URI="http://central.maven.org/maven2/com/google/http-client/google-http-client-protobuf/1.20.0/google-http-client-protobuf-1.20.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.http-client:google-http-client-protobuf:1.20.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-protobuf-1.20.0.pom
# com.google.http-client:google-http-client:1.20.0 -> >=app-maven/google-http-client-1.22.0:0
# com.google.protobuf:protobuf-java:2.4.1 -> >=app-maven/protobuf-java-2.5.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-protobuf-1.20.0.pom
CDEPEND="
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/protobuf-java-2.5.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-http-client,protobuf-java"
