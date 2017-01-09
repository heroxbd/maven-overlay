# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-auth-library-credentials-0.3.0.pom --download-uri http://central.maven.org/maven2/com/google/auth/google-auth-library-credentials/0.3.0/google-auth-library-credentials-0.3.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-auth-library-credentials-0.3.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Client libraries providing authentication and
    authorization to enable calling Google APIs."
HOMEPAGE="https://github.com/google/google-auth-library-java/google-auth-library-credentials"
SRC_URI="http://central.maven.org/maven2/com/google/auth/google-auth-library-credentials/0.3.0/google-auth-library-credentials-0.3.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.auth:google-auth-library-credentials:0.3.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

