# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/maven-repository-metadata-2.1.0.pom --download-uri http://central.maven.org/maven2/org/apache/maven/maven-repository-metadata/2.1.0/maven-repository-metadata-2.1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild maven-repository-metadata-2.1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Maven Plugin Mapping"
HOMEPAGE="http://maven.apache.org/maven-repository-metadata"
SRC_URI="http://central.maven.org/maven2/org/apache/maven/maven-repository-metadata/2.1.0/maven-repository-metadata-2.1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.maven:maven-repository-metadata:2.1.0"

# Common dependencies
# POM: ../poms/maven-repository-metadata-2.1.0.pom
# org.codehaus.plexus:plexus-utils:1.5.6 -> >=app-maven/plexus-utils-1.5.6:0
# POM: ../poms/maven-repository-metadata-2.1.0.pom
CDEPEND="
	>=app-maven/plexus-utils-1.5.6:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="plexus-utils"
