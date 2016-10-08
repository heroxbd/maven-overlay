# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/maven-artifact-manager-2.1.0.pom --download-uri http://central.maven.org/maven2/org/apache/maven/maven-artifact-manager/2.1.0/maven-artifact-manager-2.1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild maven-artifact-manager-2.1.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Maven is a project development management and comprehension tool. Based on the concept of a project object model: builds, dependency management, documentation creation, site publication, and distribution publication are all controlled from the declarative file. Maven can be extended by plugins to utilise a number of other development tools for reporting or the build process."
HOMEPAGE="http://maven.apache.org/maven-artifact-manager"
SRC_URI="http://central.maven.org/maven2/org/apache/maven/maven-artifact-manager/2.1.0/maven-artifact-manager-2.1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.maven:maven-artifact-manager:2.1.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/maven-artifact-manager-2.1.0.pom
# backport-util-concurrent:backport-util-concurrent:3.1 -> >=app-maven/backport-util-concurrent-3.1:0
# org.apache.maven:maven-artifact:2.1.0 -> >=app-maven/maven-artifact-2.1.0:0
# org.apache.maven:maven-repository-metadata:2.1.0 -> >=app-maven/maven-repository-metadata-2.1.0:0
# org.apache.maven.wagon:wagon-provider-api:1.0-beta-5 -> >=app-maven/wagon-provider-api-1.0:0
# org.codehaus.plexus:plexus-container-default:1.0-alpha-9-stable-1 -> >=app-maven/plexus-container-default-1.0:0
# org.codehaus.plexus:plexus-utils:1.5.6 -> >=app-maven/plexus-utils-1.5.6:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/maven-artifact-manager-2.1.0.pom
CDEPEND="
	>=app-maven/backport-util-concurrent-3.1:0
	>=app-maven/maven-artifact-2.1.0:0
	>=app-maven/maven-repository-metadata-2.1.0:0
	>=app-maven/plexus-container-default-1.0:0
	>=app-maven/plexus-utils-1.5.6:0
	>=app-maven/wagon-provider-api-1.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="backport-util-concurrent,maven-artifact,maven-repository-metadata,wagon-provider-api,plexus-container-default,plexus-utils"
