# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/protobuf-javanano-3.0.0-alpha-4.pom --download-uri http://central.maven.org/maven2/com/google/protobuf/nano/protobuf-javanano/3.0.0-alpha-4/protobuf-javanano-3.0.0-alpha-4-sources.jar --slot 0 --keywords "~amd64" --ebuild protobuf-javanano-3.0.0_alpha4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Protocol Buffers are a way of encoding structured data in an efficient yet
    extensible format."
HOMEPAGE="https://developers.google.com/protocol-buffers/"
SRC_URI="http://central.maven.org/maven2/com/google/protobuf/nano/protobuf-javanano/3.0.0-alpha-4/protobuf-javanano-3.0.0-alpha-4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.protobuf.nano:protobuf-javanano:3.0.0-alpha-4"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

