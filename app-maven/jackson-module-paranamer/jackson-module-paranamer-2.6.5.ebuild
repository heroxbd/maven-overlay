# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-module-paranamer-2.6.5.pom --download-uri http://central.maven.org/maven2/com/fasterxml/jackson/module/jackson-module-paranamer/2.6.5/jackson-module-paranamer-2.6.5-sources.jar --slot 0 --keywords "~amd64" --ebuild jackson-module-paranamer-2.6.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="AnnotationIntrospectors that use Paranamer (http://paranamer.codehaus.org)
to introspect names of constructor (and factory method) parameters."
HOMEPAGE="http://wiki.fasterxml.com/JacksonHome"
SRC_URI="http://central.maven.org/maven2/com/fasterxml/jackson/module/jackson-module-paranamer/2.6.5/jackson-module-paranamer-2.6.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.fasterxml.jackson.module:jackson-module-paranamer:2.6.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-module-paranamer-2.6.5.pom
# com.fasterxml.jackson.core:jackson-databind:2.6.5 -> >=dev-java/jackson-databind-2.8.5:2
# com.thoughtworks.paranamer:paranamer:2.6 -> >=app-maven/paranamer-2.6:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-module-paranamer-2.6.5.pom
CDEPEND="
	>=app-maven/paranamer-2.6:0
	>=dev-java/jackson-databind-2.8.5:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-databind-2,paranamer"
