# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-core-0.20.205.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-core/0.20.205.0/hadoop-core-0.20.205.0.jar --slot 0 --keywords "~amd64" --ebuild hadoop-core-bin-0.20.205.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-core/0.20.205.0/hadoop-core-0.20.205.0.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-core:0.20.205.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-core-0.20.205.0.pom
# commons-cli:commons-cli:1.2 -> >=dev-java/commons-cli-1.2:1
# commons-codec:commons-codec:1.4 -> >=dev-java/commons-codec-1.7:0
# commons-configuration:commons-configuration:1.6 -> >=dev-java/commons-configuration-1.6:0
# commons-el:commons-el:1.0 -> >=dev-java/commons-el-1.0:0
# commons-httpclient:commons-httpclient:3.0.1 -> >=dev-java/commons-httpclient-3.1:3
# commons-net:commons-net:1.4.1 -> >=dev-java/commons-net-3.2:0
# hsqldb:hsqldb:1.8.0.10 -> >=app-maven/hsqldb-bin-1.8.0.10:0
# net.java.dev.jets3t:jets3t:0.7.1 -> >=app-maven/jets3t-0.7.1:0
# net.sf.kosmosfs:kfs:0.3 -> >=app-maven/kfs-bin-0.3:0
# org.apache.commons:commons-math:2.1 -> >=app-maven/commons-math-2.1:0
# org.eclipse.jdt:core:3.1.1 -> >=app-maven/core-bin-3.1.1:0
# org.mortbay.jetty:jetty:6.1.26 -> >=app-maven/jetty-6.1.26:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
# org.mortbay.jetty:jsp-2.1:6.1.14 -> >=app-maven/jsp-6.1.14:2.1
# org.mortbay.jetty:jsp-api-2.1:6.1.14 -> >=app-maven/jsp-api-6.1.14:2.1
# oro:oro:2.0.8 -> >=app-maven/oro-2.0.8:0
# tomcat:jasper-compiler:5.5.12 -> >=app-maven/jasper-compiler-bin-5.5.12:0
# tomcat:jasper-runtime:5.5.12 -> >=app-maven/jasper-runtime-bin-5.5.12:0
# xmlenc:xmlenc:0.52 -> >=app-maven/xmlenc-bin-0.52:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-core-0.20.205.0.pom
CDEPEND="
	>=app-maven/commons-math-2.1:0
	>=app-maven/core-bin-3.1.1:0
	>=app-maven/hsqldb-bin-1.8.0.10:0
	>=app-maven/jasper-compiler-bin-5.5.12:0
	>=app-maven/jasper-runtime-bin-5.5.12:0
	>=app-maven/jets3t-0.7.1:0
	>=app-maven/jetty-6.1.26:0
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/jsp-6.1.14:2.1
	>=app-maven/jsp-api-6.1.14:2.1
	>=app-maven/kfs-bin-0.3:0
	>=app-maven/oro-2.0.8:0
	>=app-maven/xmlenc-bin-0.52:0
	>=dev-java/commons-cli-1.2:1
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-configuration-1.6:0
	>=dev-java/commons-el-1.0:0
	>=dev-java/commons-httpclient-3.1:3
	>=dev-java/commons-net-3.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-cli-1,commons-codec,commons-configuration,commons-el,commons-httpclient-3,commons-net,hsqldb-bin,jets3t,kfs-bin,commons-math,core-bin,jetty,jetty-util,jsp-2.1,jsp-api-2.1,oro,jasper-compiler-bin,jasper-runtime-bin,xmlenc-bin"
