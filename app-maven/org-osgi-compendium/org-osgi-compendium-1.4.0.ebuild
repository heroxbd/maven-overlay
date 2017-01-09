# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.osgi.compendium-1.4.0.pom --download-uri http://central.maven.org/maven2/org/apache/felix/org.osgi.compendium/1.4.0/org.osgi.compendium-1.4.0-sources.jar --slot 0 --keywords "~amd64" --ebuild org-osgi-compendium-1.4.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="OSGi Service Platform Release 4 Compendium Interfaces and Classes."
HOMEPAGE="http://felix.apache.org/org.osgi.compendium/"
SRC_URI="http://central.maven.org/maven2/org/apache/felix/org.osgi.compendium/1.4.0/org.osgi.compendium-1.4.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.felix:org.osgi.compendium:1.4.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.osgi.compendium-1.4.0.pom
# org.apache.felix:javax.servlet:1.0.0 -> >=app-maven/javax-servlet-bin-1.0.0:0
# org.apache.felix:org.osgi.core:1.4.0 -> >=app-maven/org-osgi-core-1.4.0:0
# org.apache.felix:org.osgi.foundation:1.2.0 -> >=dev-java/osgi-foundation-1.2.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.osgi.compendium-1.4.0.pom
CDEPEND="
	>=app-maven/javax-servlet-bin-1.0.0:0
	>=app-maven/org-osgi-core-1.4.0:0
	>=dev-java/osgi-foundation-1.2.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-servlet-bin,org-osgi-core,osgi-foundation"
