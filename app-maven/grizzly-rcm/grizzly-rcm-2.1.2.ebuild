# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grizzly-rcm-2.1.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/grizzly/grizzly-rcm/2.1.2/grizzly-rcm-2.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild grizzly-rcm-2.1.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java.net - The Source for Java Technology Collaboration"
HOMEPAGE="http://grizzly.java.net/grizzly-rcm"
SRC_URI="http://central.maven.org/maven2/org/glassfish/grizzly/grizzly-rcm/2.1.2/grizzly-rcm-2.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.grizzly:grizzly-rcm:2.1.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grizzly-rcm-2.1.2.pom
# org.glassfish.grizzly:grizzly-framework:2.1.2 -> >=app-maven/grizzly-framework-2.1.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/grizzly-rcm-2.1.2.pom
CDEPEND="
	>=app-maven/grizzly-framework-2.1.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="grizzly-framework"
