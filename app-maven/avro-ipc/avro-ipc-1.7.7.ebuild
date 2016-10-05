# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/avro-ipc-1.7.7.pom --download-uri http://central.maven.org/maven2/org/apache/avro/avro-ipc/1.7.7/avro-ipc-1.7.7-sources.jar --slot 0 --keywords "~amd64" --ebuild avro-ipc-1.7.7.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Avro inter-process communication components"
HOMEPAGE="http://avro.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/avro/avro-ipc/1.7.7/avro-ipc-1.7.7-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.avro:avro-ipc:1.7.7"

# Common dependencies
# POM: ../poms/avro-ipc-1.7.7.pom
# io.netty:netty:3.4.0.Final -> >=app-maven/netty-3.8.0:0
# org.apache.avro:avro:1.7.7 -> >=app-maven/avro-1.7.7:0
# org.apache.velocity:velocity:1.7 -> >=dev-java/velocity-1.7:0
# org.codehaus.jackson:jackson-core-asl:1.9.13 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.9.13 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.mortbay.jetty:jetty:6.1.26 -> >=app-maven/jetty-6.1.26:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
# org.mortbay.jetty:servlet-api:2.5-20081211 -> >=app-maven/servlet-api-2.5.20081211:0
# org.slf4j:slf4j-api:1.6.4 -> >=dev-java/slf4j-simple-1.7.7:0
# POM: ../poms/avro-ipc-1.7.7.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=app-maven/jetty-6.1.26:0
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/netty-3.8.0:0
	>=app-maven/servlet-api-2.5.20081211:0
	>=dev-java/slf4j-simple-1.7.7:0
	>=dev-java/velocity-1.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"
# Runtime dependencies
# POM: ../poms/avro-ipc-1.7.7.pom
# org.slf4j:slf4j-simple:1.6.4 -> >=dev-java/slf4j-simple-1.7.7:0
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=dev-java/slf4j-simple-1.7.7:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="netty,avro,velocity,jackson-core-asl,jackson-mapper-asl,jetty,jetty-util,servlet-api,slf4j-simple,slf4j-simple"
