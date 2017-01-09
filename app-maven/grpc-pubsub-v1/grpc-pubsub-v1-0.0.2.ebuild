# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-pubsub-v1-0.0.2.pom --download-uri http://central.maven.org/maven2/com/google/api/grpc/grpc-pubsub-v1/0.0.2/grpc-pubsub-v1-0.0.2-sources.jar --slot 0 --keywords "~amd64" --ebuild grpc-pubsub-v1-0.0.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Message and gRPC classes generated from pubsub v1 protos"
HOMEPAGE="http://nexus.sonatype.org/oss-repository-hosting.html/grpc-pubsub-v1"
SRC_URI="http://central.maven.org/maven2/com/google/api/grpc/grpc-pubsub-v1/0.0.2/grpc-pubsub-v1-0.0.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.api.grpc:grpc-pubsub-v1:0.0.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-pubsub-v1-0.0.2.pom
# com.google.api.grpc:grpc-core-proto:0.0.3 -> >=app-maven/grpc-core-proto-0.0.3:0
# io.grpc:grpc-all:0.12.0 -> >=app-maven/grpc-all-0.9.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-pubsub-v1-0.0.2.pom
CDEPEND="
	>=app-maven/grpc-all-0.9.0:0
	>=app-maven/grpc-core-proto-0.0.3:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="grpc-core-proto,grpc-all"
