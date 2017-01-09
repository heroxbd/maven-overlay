# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/args4j-2.0.23.pom --download-uri http://central.maven.org/maven2/args4j/args4j/2.0.23/args4j-2.0.23-sources.jar --slot 0 --keywords "~amd64" --ebuild args4j-2.0.23.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="args4j : Java command line arguments parser"
HOMEPAGE="http://args4j.dev.java.net/args4j/"
SRC_URI="http://central.maven.org/maven2/args4j/args4j/2.0.23/args4j-2.0.23-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="args4j:args4j:2.0.23"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

