# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/maven-plugin-registry-2.1.0.pom --download-uri http://central.maven.org/maven2/org/apache/maven/maven-plugin-registry/2.1.0/maven-plugin-registry-2.1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild maven-plugin-registry-2.1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Maven is a project development management and comprehension tool. Based on the concept of a project object model: builds, dependency management, documentation creation, site publication, and distribution publication are all controlled from the declarative file. Maven can be extended by plugins to utilise a number of other development tools for reporting or the build process."
HOMEPAGE="http://maven.apache.org/maven-plugin-registry"
SRC_URI="http://central.maven.org/maven2/org/apache/maven/maven-plugin-registry/2.1.0/maven-plugin-registry-2.1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.maven:maven-plugin-registry:2.1.0"

# Common dependencies
# POM: ../poms/maven-plugin-registry-2.1.0.pom
# org.codehaus.plexus:plexus-container-default:1.0-alpha-9-stable-1 -> >=app-maven/plexus-container-default-1.0:0
# org.codehaus.plexus:plexus-utils:1.5.6 -> >=app-maven/plexus-utils-1.5.6:0
# POM: ../poms/maven-plugin-registry-2.1.0.pom
CDEPEND="
	>=app-maven/plexus-container-default-1.0:0
	>=app-maven/plexus-utils-1.5.6:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="plexus-container-default,plexus-utils"
