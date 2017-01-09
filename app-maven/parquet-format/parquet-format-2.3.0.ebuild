# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-format-2.3.0-incubating.pom --download-uri http://central.maven.org/maven2/org/apache/parquet/parquet-format/2.3.0-incubating/parquet-format-2.3.0-incubating-sources.jar --slot 0 --keywords "~amd64" --ebuild parquet-format-2.3.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Parquet is a columnar storage format that supports nested data. This provides all generated metadata code."
HOMEPAGE="http://parquet.incubator.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/parquet/parquet-format/2.3.0-incubating/parquet-format-2.3.0-incubating-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.parquet:parquet-format:2.3.0-incubating"

DEPEND="
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.6"

S="${WORKDIR}"

