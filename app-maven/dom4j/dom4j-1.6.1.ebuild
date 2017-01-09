# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/dom4j-1.6.1.pom --download-uri http://central.maven.org/maven2/dom4j/dom4j/1.6.1/dom4j-1.6.1-sources.jar --slot 0 --keywords "~amd64" --ebuild dom4j-1.6.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="dom4j: the flexible XML framework for Java"
HOMEPAGE="http://dom4j.org"
SRC_URI="http://central.maven.org/maven2/dom4j/dom4j/1.6.1/dom4j-1.6.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="dom4j:dom4j:1.6.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/dom4j-1.6.1.pom
# jaxen:jaxen:1.1-beta-6 -> >=dev-java/xom-1.2.10:0
# jaxme:jaxme-api:0.3 -> >=app-maven/jaxme-api-bin-0.3:0
# msv:relaxngDatatype:20030807 -> >=app-maven/relaxngDatatype-bin-20030807:0
# msv:xsdlib:20030807 -> >=app-maven/xsdlib-bin-20030807:0
# pull-parser:pull-parser:2 -> >=app-maven/pull-parser-bin-2:0
# stax:stax-api:1.0 -> >=app-maven/stax-api-bin-1.0:0
# xml-apis:xml-apis:1.0.b2 -> >=app-maven/xml-apis-1.0:0
# xpp3:xpp3:1.1.3.3 -> >=app-maven/xpp3-1.1.4:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/dom4j-1.6.1.pom
CDEPEND="
	>=app-maven/jaxme-api-bin-0.3:0
	>=app-maven/pull-parser-bin-2:0
	>=app-maven/relaxngDatatype-bin-20030807:0
	>=app-maven/stax-api-bin-1.0:0
	>=app-maven/xml-apis-1.0:0
	>=app-maven/xpp3-1.1.4:0
	>=app-maven/xsdlib-bin-20030807:0
	>=dev-java/xom-1.2.10:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="xom,jaxme-api-bin,relaxngDatatype-bin,xsdlib-bin,pull-parser-bin,stax-api-bin,xml-apis,xpp3"
