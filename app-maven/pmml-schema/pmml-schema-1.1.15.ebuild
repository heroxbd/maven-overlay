# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-schema-1.1.15.pom --download-uri http://central.maven.org/maven2/org/jpmml/pmml-schema/1.1.15/pmml-schema-1.1.15-sources.jar --slot 0 --keywords "~amd64" --ebuild pmml-schema-1.1.15.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JPMML schema annotations for class model"
HOMEPAGE="http://www.jpmml.org/pmml-schema"
SRC_URI="http://central.maven.org/maven2/org/jpmml/pmml-schema/1.1.15/pmml-schema-1.1.15-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jpmml:pmml-schema:1.1.15"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

