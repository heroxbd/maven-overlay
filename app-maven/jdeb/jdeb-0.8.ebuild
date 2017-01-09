# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdeb-0.8.pom --download-uri http://central.maven.org/maven2/org/vafer/jdeb/0.8/jdeb-0.8-sources.jar --slot 0 --keywords "~amd64" --ebuild jdeb-0.8.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="This library provides an Ant task and a Maven plugin to create Debian packages from Java builds in a truly cross
      platform manner. Build your Debian packages on any platform that has Java support. Windows, Linux - it does not
      require additional native tools installed. The API underneath is well abstracted can easily be adopted for other
      areas as well."
HOMEPAGE="http://vafer.org/projects/jdeb"
SRC_URI="http://central.maven.org/maven2/org/vafer/jdeb/0.8/jdeb-0.8-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.vafer:jdeb:0.8"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdeb-0.8.pom
# org.apache.ant:ant:1.7.1 -> >=dev-java/ant-core-1.9.2:0
# org.apache.commons:commons-compress:1.0 -> >=app-maven/commons-compress-1.4.1:0
# org.apache.maven:maven-artifact:2.1.0 -> >=app-maven/maven-artifact-2.1.0:0
# org.apache.maven:maven-plugin-api:2.1.0 -> >=app-maven/maven-plugin-api-2.1.0:0
# org.apache.maven:maven-project:2.1.0 -> >=app-maven/maven-project-2.1.0:0
# org.bouncycastle:bcpg-jdk12:130 -> >=dev-java/bcpg-1.50:1.50
# org.codehaus.plexus:plexus-utils:1.4.1 -> >=app-maven/plexus-utils-1.4.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jdeb-0.8.pom
CDEPEND="
	>=app-maven/commons-compress-1.4.1:0
	>=app-maven/maven-artifact-2.1.0:0
	>=app-maven/maven-plugin-api-2.1.0:0
	>=app-maven/maven-project-2.1.0:0
	>=app-maven/plexus-utils-1.4.1:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/bcpg-1.50:1.50"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="ant-core,commons-compress,maven-artifact,maven-plugin-api,maven-project,bcpg-1.50,plexus-utils"
