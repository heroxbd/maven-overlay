# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wagon-provider-api-1.0-beta-5.pom --download-uri http://central.maven.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0-beta-5/wagon-provider-api-1.0-beta-5-sources.jar --slot 0 --keywords "~amd64" --ebuild wagon-provider-api-1.0_beta5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Maven Wagon API that defines the contract between different Wagon implementations"
HOMEPAGE="http://maven.apache.org/wagon/wagon-provider-api"
SRC_URI="http://central.maven.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0-beta-5/wagon-provider-api-1.0-beta-5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.maven.wagon:wagon-provider-api:1.0-beta-5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wagon-provider-api-1.0-beta-5.pom
# org.codehaus.plexus:plexus-utils:1.4.2 -> >=app-maven/plexus-utils-1.5.6:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wagon-provider-api-1.0-beta-5.pom
CDEPEND="
	>=app-maven/plexus-utils-1.5.6:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="plexus-utils"
