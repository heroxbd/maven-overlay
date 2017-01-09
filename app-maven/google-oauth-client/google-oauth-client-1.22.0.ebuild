# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-oauth-client-1.22.0.pom --download-uri http://central.maven.org/maven2/com/google/oauth-client/google-oauth-client/1.22.0/google-oauth-client-1.22.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-oauth-client-1.22.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Google OAuth Client Library for Java. Functionality that works on all supported Java platforms,
    including Java 5 (or higher) desktop (SE) and web (EE), Android, and Google App Engine."
HOMEPAGE="https://github.com/google/google-oauth-java-client/google-oauth-client"
SRC_URI="http://central.maven.org/maven2/com/google/oauth-client/google-oauth-client/1.22.0/google-oauth-client-1.22.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.oauth-client:google-oauth-client:1.22.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-oauth-client-1.22.0.pom
# com.google.code.findbugs:jsr305:1.3.9 -> >=app-maven/jsr305-bin-1.3.9:0
# com.google.http-client:google-http-client:1.22.0 -> >=app-maven/google-http-client-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-oauth-client-1.22.0.pom
CDEPEND="
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/jsr305-bin-1.3.9:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr305-bin,google-http-client"
