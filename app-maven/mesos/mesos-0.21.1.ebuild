# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/mesos-0.21.1.pom --download-uri http://central.maven.org/maven2/org/apache/mesos/mesos/0.21.1/mesos-0.21.1-sources.jar --slot 0 --keywords "~amd64" --ebuild mesos-0.21.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Mesos Java API jar."
HOMEPAGE="http://mesos.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/mesos/mesos/0.21.1/mesos-0.21.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.mesos:mesos:0.21.1"

# Common dependencies
# POM: ../poms/mesos-0.21.1.pom
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# POM: ../poms/mesos-0.21.1.pom
CDEPEND="
	>=app-maven/protobuf-java-2.5.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java"
