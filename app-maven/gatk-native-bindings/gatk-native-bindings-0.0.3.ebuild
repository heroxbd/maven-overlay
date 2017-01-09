# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gatk-native-bindings-0.0.3.pom --download-uri http://central.maven.org/maven2/org/broadinstitute/gatk-native-bindings/0.0.3/gatk-native-bindings-0.0.3-sources.jar --slot 0 --keywords "~amd64" --ebuild gatk-native-bindings-0.0.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Bindings for native libraries to implement to be compatible with GATK4"
HOMEPAGE="http://github.com/broadinstitute/gatk-native-bindings"
SRC_URI="http://central.maven.org/maven2/org/broadinstitute/gatk-native-bindings/0.0.3/gatk-native-bindings-0.0.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.broadinstitute:gatk-native-bindings:0.0.3"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

