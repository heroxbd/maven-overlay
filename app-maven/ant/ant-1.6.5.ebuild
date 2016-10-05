# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/ant-1.6.5.pom --download-uri http://central.maven.org/maven2/ant/ant/1.6.5/ant-1.6.5-sources.jar --slot 0 --keywords "~amd64" --ebuild ant-1.6.5.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://www.apache.org/ant/"
SRC_URI="http://central.maven.org/maven2/ant/ant/1.6.5/ant-1.6.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="ant:ant:1.6.5"

# Common dependencies
# POM: ../poms/ant-1.6.5.pom
# xerces:xercesImpl:2.6.2 -> >=dev-java/xerces-2.11.0:2
# xml-apis:xml-apis:1.3.04 -> >=app-maven/xml-apis-1.3.04:0
# POM: ../poms/ant-1.6.5.pom
CDEPEND="
	>=app-maven/xml-apis-1.3.04:0
	>=dev-java/xerces-2.11.0:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="xerces-2,xml-apis"
