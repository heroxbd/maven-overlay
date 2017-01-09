# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jbwa-1.0.0_ppc64.pom --download-uri http://central.maven.org/maven2/com/github/lindenb/jbwa/1.0.0_ppc64/jbwa-1.0.0_ppc64-sources.jar --slot 0 --keywords "~amd64" --ebuild jbwa-1.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java Bindings (JNI) for bwa"
HOMEPAGE="https://github.com/lindenb/jbwa"
SRC_URI="http://central.maven.org/maven2/com/github/lindenb/jbwa/1.0.0_ppc64/jbwa-1.0.0_ppc64-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.github.lindenb:jbwa:1.0.0_ppc64"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

