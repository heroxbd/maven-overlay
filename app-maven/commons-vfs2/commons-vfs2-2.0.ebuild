# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-vfs2-2.0.pom --download-uri http://central.maven.org/maven2/org/apache/commons/commons-vfs2/2.0/commons-vfs2-2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild commons-vfs2-2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="VFS is a Virtual File System library."
HOMEPAGE="http://commons.apache.org/vfs/commons-vfs2/"
SRC_URI="http://central.maven.org/maven2/org/apache/commons/commons-vfs2/2.0/commons-vfs2-2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.commons:commons-vfs2:2.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-vfs2-2.0.pom
# ant:ant:1.6.2 -> >=dev-java/ant-core-1.9.2:0
# com.jcraft:jsch:0.1.42 -> >=app-maven/jsch-0.1.42:0
# commons-collections:commons-collections:3.1 -> >=dev-java/commons-collections-4.1:4
# commons-httpclient:commons-httpclient:3.1 -> >=dev-java/commons-httpclient-3.1:3
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# commons-net:commons-net:2.2 -> >=dev-java/commons-net-3.2:0
# org.apache.jackrabbit:jackrabbit-webdav:1.5.2 -> >=dev-java/jackrabbit-webdav-2.10.1:0
# org.apache.maven.scm:maven-scm-api:1.4 -> >=app-maven/maven-scm-api-1.4:0
# org.apache.maven.scm:maven-scm-provider-svnexe:1.4 -> >=app-maven/maven-scm-provider-svnexe-1.4:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-vfs2-2.0.pom
CDEPEND="
	>=app-maven/jsch-0.1.42:0
	>=app-maven/maven-scm-api-1.4:0
	>=app-maven/maven-scm-provider-svnexe-1.4:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/commons-collections-4.1:4
	>=dev-java/commons-httpclient-3.1:3
	>=dev-java/commons-logging-1.2:0
	>=dev-java/commons-net-3.2:0
	>=dev-java/jackrabbit-webdav-2.10.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="ant-core,jsch,commons-collections-4,commons-httpclient-3,commons-logging,commons-net,jackrabbit-webdav,maven-scm-api,maven-scm-provider-svnexe"
