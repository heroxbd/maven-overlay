# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-core-proto-0.0.3.pom --download-uri http://central.maven.org/maven2/com/google/api/grpc/grpc-core-proto/0.0.3/grpc-core-proto-0.0.3-sources.jar --slot 0 --keywords "~amd64" --ebuild grpc-core-proto-0.0.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="GoogleAPI classes generated from core protos"
HOMEPAGE="http://nexus.sonatype.org/oss-repository-hosting.html/grpc-core-proto"
SRC_URI="http://central.maven.org/maven2/com/google/api/grpc/grpc-core-proto/0.0.3/grpc-core-proto-0.0.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.api.grpc:grpc-core-proto:0.0.3"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-core-proto-0.0.3.pom
# com.google.protobuf:protobuf-java:3.0.0-beta-1 -> >=app-maven/protobuf-java-2.5.0:0
# io.grpc:grpc-protobuf:0.12.0 -> >=app-maven/grpc-protobuf-0.9.0:0
# io.grpc:grpc-stub:0.12.0 -> >=app-maven/grpc-stub-0.9.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-core-proto-0.0.3.pom
CDEPEND="
	>=app-maven/grpc-protobuf-0.9.0:0
	>=app-maven/grpc-stub-0.9.0:0
	>=app-maven/protobuf-java-2.5.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java,grpc-protobuf,grpc-stub"
