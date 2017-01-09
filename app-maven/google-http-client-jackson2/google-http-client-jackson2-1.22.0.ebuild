# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-jackson2-1.22.0.pom --download-uri http://central.maven.org/maven2/com/google/http-client/google-http-client-jackson2/1.22.0/google-http-client-jackson2-1.22.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-http-client-jackson2-1.22.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="https://github.com/google/google-http-java-client/google-http-client-jackson2"
SRC_URI="http://central.maven.org/maven2/com/google/http-client/google-http-client-jackson2/1.22.0/google-http-client-jackson2-1.22.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.http-client:google-http-client-jackson2:1.22.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-jackson2-1.22.0.pom
# com.fasterxml.jackson.core:jackson-core:2.1.3 -> >=dev-java/jackson-2.8.5:2
# com.google.http-client:google-http-client:1.22.0 -> >=app-maven/google-http-client-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-jackson2-1.22.0.pom
CDEPEND="
	>=app-maven/google-http-client-1.22.0:0
	>=dev-java/jackson-2.8.5:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-2,google-http-client"
