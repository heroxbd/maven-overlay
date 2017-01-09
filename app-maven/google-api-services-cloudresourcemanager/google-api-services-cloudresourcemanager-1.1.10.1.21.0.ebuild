# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-cloudresourcemanager-v1beta1-rev10-1.21.0.pom --download-uri http://central.maven.org/maven2/com/google/apis/google-api-services-cloudresourcemanager/v1beta1-rev10-1.21.0/google-api-services-cloudresourcemanager-v1beta1-rev10-1.21.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-api-services-cloudresourcemanager-1.1.10.1.21.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="http://nexus.sonatype.org/oss-repository-hosting.html/google-api-services-cloudresourcemanager"
SRC_URI="http://central.maven.org/maven2/com/google/apis/google-api-services-cloudresourcemanager/v1beta1-rev10-1.21.0/google-api-services-cloudresourcemanager-v1beta1-rev10-1.21.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.apis:google-api-services-cloudresourcemanager:v1beta1-rev10-1.21.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-cloudresourcemanager-v1beta1-rev10-1.21.0.pom
# com.google.api-client:google-api-client:1.21.0 -> >=app-maven/google-api-client-1.22.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-services-cloudresourcemanager-v1beta1-rev10-1.21.0.pom
CDEPEND="
	>=app-maven/google-api-client-1.22.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client"
