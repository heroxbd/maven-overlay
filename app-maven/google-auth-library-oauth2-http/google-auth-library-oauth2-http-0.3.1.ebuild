# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-auth-library-oauth2-http-0.3.1.pom --download-uri http://central.maven.org/maven2/com/google/auth/google-auth-library-oauth2-http/0.3.1/google-auth-library-oauth2-http-0.3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild google-auth-library-oauth2-http-0.3.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Client libraries providing authentication and
    authorization to enable calling Google APIs."
HOMEPAGE="https://github.com/google/google-auth-library-java/google-auth-library-oauth2-http"
SRC_URI="http://central.maven.org/maven2/com/google/auth/google-auth-library-oauth2-http/0.3.1/google-auth-library-oauth2-http-0.3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.auth:google-auth-library-oauth2-http:0.3.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-auth-library-oauth2-http-0.3.1.pom
# com.google.auth:google-auth-library-credentials:0.3.1 -> >=app-maven/google-auth-library-credentials-0.3.0:0
# com.google.guava:guava-jdk5:13.0 -> >=app-maven/guava-jdk5-17.0:0
# com.google.http-client:google-http-client:1.19.0 -> >=app-maven/google-http-client-1.22.0:0
# com.google.http-client:google-http-client-jackson2:1.19.0 -> >=app-maven/google-http-client-jackson2-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-auth-library-oauth2-http-0.3.1.pom
CDEPEND="
	>=app-maven/google-auth-library-credentials-0.3.0:0
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/google-http-client-jackson2-1.22.0:0
	>=app-maven/guava-jdk5-17.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-auth-library-credentials,guava-jdk5,google-http-client,google-http-client-jackson2"
