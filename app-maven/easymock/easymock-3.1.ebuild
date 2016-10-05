# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/easymock-3.1.pom --download-uri http://central.maven.org/maven2/org/easymock/easymock/3.1/easymock-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild easymock-3.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="EasyMock provides an easy way to create Mock Objects for interfaces and classes generating them on the fly"
HOMEPAGE="http://www.easymock.org/easymock"
SRC_URI="http://central.maven.org/maven2/org/easymock/easymock/3.1/easymock-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.easymock:easymock:3.1"

# Common dependencies
# POM: ../poms/easymock-3.1.pom
# cglib:cglib-nodep:2.2.2 -> >=app-maven/cglib-nodep-2.2.2:0
# org.objenesis:objenesis:1.2 -> >=app-maven/objenesis-2.1:0
# POM: ../poms/easymock-3.1.pom
CDEPEND="
	>=app-maven/cglib-nodep-2.2.2:0
	>=app-maven/objenesis-2.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="cglib-nodep,objenesis"
