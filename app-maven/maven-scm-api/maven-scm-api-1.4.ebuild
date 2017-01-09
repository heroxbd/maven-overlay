# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/maven-scm-api-1.4.pom --download-uri http://central.maven.org/maven2/org/apache/maven/scm/maven-scm-api/1.4/maven-scm-api-1.4-sources.jar --slot 0 --keywords "~amd64" --ebuild maven-scm-api-1.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The SCM API provides mechanisms to manage all SCM tools."
HOMEPAGE="http://maven.apache.org/scm/maven-scm-api/"
SRC_URI="http://central.maven.org/maven2/org/apache/maven/scm/maven-scm-api/1.4/maven-scm-api-1.4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.maven.scm:maven-scm-api:1.4"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/maven-scm-api-1.4.pom
# org.codehaus.plexus:plexus-utils:1.5.6 -> >=app-maven/plexus-utils-1.4.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/maven-scm-api-1.4.pom
CDEPEND="
	>=app-maven/plexus-utils-1.4.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="plexus-utils"
