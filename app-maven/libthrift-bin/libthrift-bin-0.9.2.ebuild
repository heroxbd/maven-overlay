# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/libthrift-0.9.2.pom --download-uri http://central.maven.org/maven2/org/apache/thrift/libthrift/0.9.2/libthrift-0.9.2.jar --slot 0 --keywords "~amd64" --ebuild libthrift-bin-0.9.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Thrift is a software framework for scalable cross-language services development."
HOMEPAGE="http://thrift.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/thrift/libthrift/0.9.2/libthrift-0.9.2.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.thrift:libthrift:0.9.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/libthrift-0.9.2.pom
# org.apache.httpcomponents:httpclient:4.2.5 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.apache.httpcomponents:httpcore:4.2.4 -> >=dev-java/httpcomponents-core-4.4.1:4.4
# org.slf4j:slf4j-api:1.5.8 -> >=dev-java/slf4j-nop-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/libthrift-0.9.2.pom
CDEPEND="
	>=dev-java/httpcomponents-client-4.5:4.5
	>=dev-java/httpcomponents-core-4.4.1:4.4
	>=dev-java/slf4j-nop-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/libthrift-0.9.2.pom
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/servlet-api-2.5:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="httpcomponents-client-4.5,httpcomponents-core-4.4,slf4j-nop"
JAVA_CLASSPATH_EXTRA="servlet-api"
