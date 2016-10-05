# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/ivy-2.4.0.pom --download-uri http://central.maven.org/maven2/org/apache/ivy/ivy/2.4.0/ivy-2.4.0-sources.jar --slot 0 --keywords "~amd64" --ebuild ivy-2.4.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://ant.apache.org/ivy/"
SRC_URI="http://central.maven.org/maven2/org/apache/ivy/ivy/2.4.0/ivy-2.4.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.ivy:ivy:2.4.0"

# Common dependencies
# POM: ../poms/ivy-2.4.0.pom
# com.jcraft:jsch:0.1.50 -> >=dev-java/jsch-0.1.52:0
# com.jcraft:jsch.agentproxy:0.0.6 -> >=app-maven/jsch-agentproxy-bin-0.0.6:0
# com.jcraft:jsch.agentproxy.connector-factory:0.0.6 -> >=app-maven/jsch-agentproxy-connector-factory-0.0.6:0
# com.jcraft:jsch.agentproxy.jsch:0.0.6 -> >=app-maven/jsch-agentproxy-jsch-0.0.6:0
# commons-httpclient:commons-httpclient:3.0 -> >=dev-java/commons-httpclient-3.1:3
# commons-vfs:commons-vfs:1.0 -> >=dev-java/commons-vfs-1.0:0
# org.apache.ant:ant:1.7.1 -> >=dev-java/ant-core-1.9.2:0
# org.apache.ant:ant-nodeps:1.7.1 -> >=dev-java/ant-nodeps-1.9.2:0
# org.apache.ant:ant-trax:1.7.1 -> >=dev-java/ant-trax-1.9.2:0
# org.bouncycastle:bcpg-jdk14:1.45 -> >=dev-java/bcpg-1.52:1.52
# org.bouncycastle:bcprov-jdk14:1.45 -> >=dev-java/bcprov-1.38:1.38
# oro:oro:2.0.8 -> >=app-maven/oro-2.0.8:0
# POM: ../poms/ivy-2.4.0.pom
CDEPEND="
	>=app-maven/jsch-agentproxy-bin-0.0.6:0
	>=app-maven/jsch-agentproxy-connector-factory-0.0.6:0
	>=app-maven/jsch-agentproxy-jsch-0.0.6:0
	>=app-maven/oro-2.0.8:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/ant-nodeps-1.9.2:0
	>=dev-java/ant-trax-1.9.2:0
	>=dev-java/bcpg-1.52:1.52
	>=dev-java/bcprov-1.38:1.38
	>=dev-java/commons-httpclient-3.1:3
	>=dev-java/commons-vfs-1.0:0
	>=dev-java/jsch-0.1.52:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsch,jsch-agentproxy-bin,jsch-agentproxy-connector-factory,jsch-agentproxy-jsch,commons-httpclient-3,commons-vfs,ant-core,ant-nodeps,ant-trax,bcpg-1.52,bcprov-1.38,oro"