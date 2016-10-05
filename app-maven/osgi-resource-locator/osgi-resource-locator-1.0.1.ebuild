# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/osgi-resource-locator-1.0.1.pom --download-uri http://central.maven.org/maven2/org/glassfish/hk2/osgi-resource-locator/1.0.1/osgi-resource-locator-1.0.1-sources.jar --slot 0 --keywords "~amd64" --ebuild osgi-resource-locator-1.0.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="See http://wiki.glassfish.java.net/Wiki.jsp?page=JdkSpiOsgi for more information"
HOMEPAGE="http://glassfish.org/osgi-resource-locator/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/hk2/osgi-resource-locator/1.0.1/osgi-resource-locator-1.0.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.glassfish.hk2:osgi-resource-locator:1.0.1"
# Compile dependencies
# POM: ../poms/osgi-resource-locator-1.0.1.pom
# org.osgi:org.osgi.compendium:4.2.0 -> >=app-maven/org-osgi-compendium-4.2.0:0
# org.osgi:org.osgi.core:4.2.0 -> >=app-maven/org-osgi-core-4.2.0:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/org-osgi-compendium-4.2.0:0
	>=app-maven/org-osgi-core-4.2.0:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="org-osgi-compendium,org-osgi-core"
