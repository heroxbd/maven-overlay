# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/commons-exec-1.1.pom --download-uri http://central.maven.org/maven2/org/apache/commons/commons-exec/1.1/commons-exec-1.1-sources.jar --slot 0 --keywords "~amd64" --ebuild commons-exec-1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A library to reliably execute external processes from within the JVM"
HOMEPAGE="http://commons.apache.org/exec/"
SRC_URI="http://central.maven.org/maven2/org/apache/commons/commons-exec/1.1/commons-exec-1.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.commons:commons-exec:1.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

