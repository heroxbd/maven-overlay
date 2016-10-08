# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/py4j-0.10.1.pom --download-uri http://central.maven.org/maven2/net/sf/py4j/py4j/0.10.1/py4j-0.10.1-sources.jar --slot 0 --keywords "~amd64" --ebuild py4j-0.10.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Py4J enables Python programs running in a Python interpreter to dynamically access Java objects in a Java Virtual Machine. Methods are called as if the Java objects resided in the Python interpreter and Java collections can be accessed through standard Python collection methods. Py4J also enables Java programs to call back Python objects."
HOMEPAGE="http://nexus.sonatype.org/oss-repository-hosting.html/py4j"
SRC_URI="http://central.maven.org/maven2/net/sf/py4j/py4j/0.10.1/py4j-0.10.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.sf.py4j:py4j:0.10.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

