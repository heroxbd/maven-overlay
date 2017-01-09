# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/geronimo-jpa_3.0_spec-1.1.1.pom --download-uri http://central.maven.org/maven2/org/apache/geronimo/specs/geronimo-jpa_3.0_spec/1.1.1/geronimo-jpa_3.0_spec-1.1.1-sources.jar --slot 3.0_spec --keywords "~amd64" --ebuild geronimo-jpa-1.1.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Provides open-source implementations of Sun specifications."
HOMEPAGE="http://geronimo.apache.org/specs/geronimo-jpa_3.0_spec"
SRC_URI="http://central.maven.org/maven2/org/apache/geronimo/specs/geronimo-jpa_3.0_spec/1.1.1/geronimo-jpa_3.0_spec-1.1.1-sources.jar"
LICENSE=""
SLOT="3.0_spec"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.geronimo.specs:geronimo-jpa_3.0_spec:1.1.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

