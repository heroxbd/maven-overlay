# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-resourcemanager-0.2.5.pom --download-uri http://central.maven.org/maven2/com/google/cloud/gcloud-java-resourcemanager/0.2.5/gcloud-java-resourcemanager-0.2.5-sources.jar --slot 0 --keywords "~amd64" --ebuild gcloud-java-resourcemanager-0.2.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java idiomatic client for Google Cloud Resource Manager."
HOMEPAGE="https://github.com/GoogleCloudPlatform/gcloud-java/tree/master/gcloud-java-resourcemanager"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/gcloud-java-resourcemanager/0.2.5/gcloud-java-resourcemanager-0.2.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud:gcloud-java-resourcemanager:0.2.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-resourcemanager-0.2.5.pom
# com.google.apis:google-api-services-cloudresourcemanager:v1beta1-rev10-1.21.0 -> >=app-maven/google-api-services-cloudresourcemanager-1.1.10.1.21.0:0
# com.google.cloud:gcloud-java-core:0.2.5 -> >=app-maven/gcloud-java-core-0.2.5:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-resourcemanager-0.2.5.pom
CDEPEND="
	>=app-maven/gcloud-java-core-0.2.5:0
	>=app-maven/google-api-services-cloudresourcemanager-1.1.10.1.21.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-services-cloudresourcemanager,gcloud-java-core"
