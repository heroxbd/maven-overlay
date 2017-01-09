# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-all-0.9.0.pom --download-uri http://central.maven.org/maven2/io/grpc/grpc-all/0.9.0/grpc-all-0.9.0-sources.jar --slot 0 --keywords "~amd64" --ebuild grpc-all-0.9.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="gRPC: All"
HOMEPAGE="https://github.com/grpc/grpc-java"
SRC_URI="http://central.maven.org/maven2/io/grpc/grpc-all/0.9.0/grpc-all-0.9.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="io.grpc:grpc-all:0.9.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-all-0.9.0.pom
# io.grpc:grpc-auth:0.9.0 -> >=app-maven/grpc-auth-0.9.0:0
# io.grpc:grpc-core:0.9.0 -> >=app-maven/grpc-core-0.9.0:0
# io.grpc:grpc-netty:0.9.0 -> >=app-maven/grpc-netty-0.9.0:0
# io.grpc:grpc-okhttp:0.9.0 -> >=app-maven/grpc-okhttp-0.9.0:0
# io.grpc:grpc-protobuf:0.9.0 -> >=app-maven/grpc-protobuf-0.9.0:0
# io.grpc:grpc-protobuf-nano:0.9.0 -> >=app-maven/grpc-protobuf-nano-0.9.0:0
# io.grpc:grpc-stub:0.9.0 -> >=app-maven/grpc-stub-0.9.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grpc-all-0.9.0.pom
CDEPEND="
	>=app-maven/grpc-auth-0.9.0:0
	>=app-maven/grpc-core-0.9.0:0
	>=app-maven/grpc-netty-0.9.0:0
	>=app-maven/grpc-okhttp-0.9.0:0
	>=app-maven/grpc-protobuf-0.9.0:0
	>=app-maven/grpc-protobuf-nano-0.9.0:0
	>=app-maven/grpc-stub-0.9.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="grpc-auth,grpc-core,grpc-netty,grpc-okhttp,grpc-protobuf,grpc-protobuf-nano,grpc-stub"
