# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gov.nist.math.jama-1.1.1.pom --download-uri http://central.maven.org/maven2/gov/nist/math/jama/gov.nist.math.jama/1.1.1/gov.nist.math.jama-1.1.1-sources.jar --slot 0 --keywords "~amd64" --ebuild gov-nist-math-jama-1.1.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="http://math.nist.gov/javanumerics/jama/"
SRC_URI="http://central.maven.org/maven2/gov/nist/math/jama/gov.nist.math.jama/1.1.1/gov.nist.math.jama-1.1.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="gov.nist.math.jama:gov.nist.math.jama:1.1.1"

DEPEND="
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.6"

S="${WORKDIR}"

