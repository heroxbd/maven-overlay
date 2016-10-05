# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/commons-lang3-3.3.2.pom --download-uri http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.3.2/commons-lang3-3.3.2-sources.jar --slot 0 --keywords "~amd64" --ebuild commons-lang3-3.3.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Commons Lang, a package of Java utility classes for the
  classes that are in java.lang's hierarchy, or are considered to be so
  standard as to justify existence in java.lang."
HOMEPAGE="http://commons.apache.org/proper/commons-lang/"
SRC_URI="http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.3.2/commons-lang3-3.3.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.commons:commons-lang3:3.3.2"

DEPEND="
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.6"

S="${WORKDIR}"

JAVA_ENCODING="ISO-8859-1"
