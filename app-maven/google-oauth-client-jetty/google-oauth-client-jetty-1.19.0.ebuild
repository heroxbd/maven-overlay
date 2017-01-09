# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-oauth-client-jetty-1.19.0.pom --download-uri http://central.maven.org/maven2/com/google/oauth-client/google-oauth-client-jetty/1.19.0/google-oauth-client-jetty-1.19.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-oauth-client-jetty-1.19.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="http://code.google.com/p/google-oauth-java-client/google-oauth-client-jetty/"
SRC_URI="http://central.maven.org/maven2/com/google/oauth-client/google-oauth-client-jetty/1.19.0/google-oauth-client-jetty-1.19.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.oauth-client:google-oauth-client-jetty:1.19.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-oauth-client-jetty-1.19.0.pom
# com.google.oauth-client:google-oauth-client-java6:1.19.0 -> >=app-maven/google-oauth-client-java6-1.20.0:0
# org.mortbay.jetty:jetty:6.1.26 -> >=app-maven/jetty-6.1.26:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-oauth-client-jetty-1.19.0.pom
CDEPEND="
	>=app-maven/google-oauth-client-java6-1.20.0:0
	>=app-maven/jetty-6.1.26:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-oauth-client-java6,jetty"
