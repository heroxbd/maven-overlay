# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/avro-mapred-1.7.7.pom --download-uri http://central.maven.org/maven2/org/apache/avro/avro-mapred/1.7.7/avro-mapred-1.7.7-sources.jar --slot 0 --keywords "~amd64" --ebuild avro-mapred-1.7.7.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="An org.apache.hadoop.mapred compatible API for using Avro Serializatin in Hadoop"
HOMEPAGE="http://avro.apache.org/avro-mapred"
SRC_URI="http://central.maven.org/maven2/org/apache/avro/avro-mapred/1.7.7/avro-mapred-1.7.7-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.avro:avro-mapred:1.7.7"

# Common dependencies
# POM: ../poms/avro-mapred-1.7.7.pom
# org.apache.avro:avro-ipc:1.7.7 -> >=app-maven/avro-ipc-1.7.7:0
# org.apache.avro:avro-ipc:1.7.7 -> >=app-maven/avro-ipc-1.7.7:0
# org.codehaus.jackson:jackson-core-asl:1.9.13 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.9.13 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.slf4j:slf4j-api:1.6.4 -> >=dev-java/slf4j-api-1.7.7:0
# POM: ../poms/avro-mapred-1.7.7.pom
CDEPEND="
	>=app-maven/avro-ipc-1.7.7:0
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=dev-java/slf4j-api-1.7.7:0"
# Compile dependencies
# POM: ../poms/avro-mapred-1.7.7.pom
# org.apache.hadoop:hadoop-core:0.20.205.0 -> >=app-maven/hadoop-core-bin-0.20.205.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-core-bin-0.20.205.0:0"
# Runtime dependencies
# POM: ../poms/avro-mapred-1.7.7.pom
# org.slf4j:slf4j-simple:1.6.4 -> >=dev-java/slf4j-api-1.7.7:0
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=dev-java/slf4j-api-1.7.7:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="avro-ipc,avro-ipc,jackson-core-asl,jackson-mapper-asl,slf4j-api,slf4j-api"
JAVA_CLASSPATH_EXTRA="hadoop-core-bin"
