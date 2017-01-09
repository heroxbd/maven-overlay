# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-datastore-0.2.5.pom --download-uri http://central.maven.org/maven2/com/google/cloud/gcloud-java-datastore/0.2.5/gcloud-java-datastore-0.2.5-sources.jar --slot 0 --keywords "~amd64" --ebuild gcloud-java-datastore-0.2.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java idiomatic client for Google Cloud Datastore."
HOMEPAGE="https://github.com/GoogleCloudPlatform/gcloud-java/tree/master/gcloud-java-datastore"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/gcloud-java-datastore/0.2.5/gcloud-java-datastore-0.2.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud:gcloud-java-datastore:0.2.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-datastore-0.2.5.pom
# com.google.cloud:gcloud-java-core:0.2.5 -> >=app-maven/gcloud-java-core-0.2.5:0
# com.google.cloud.datastore:datastore-v1beta3-proto-client:1.0.0-beta.2 -> >=app-maven/datastore-v1beta3-proto-client-1.0.0_beta2:0
# com.google.cloud.datastore:datastore-v1beta3-protos:1.0.0-beta -> >=app-maven/datastore-v1beta3-protos-1.0.0_beta:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-datastore-0.2.5.pom
CDEPEND="
	>=app-maven/datastore-v1beta3-proto-client-1.0.0_beta2:0
	>=app-maven/datastore-v1beta3-protos-1.0.0_beta:0
	>=app-maven/gcloud-java-core-0.2.5:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="gcloud-java-core,datastore-v1beta3-proto-client,datastore-v1beta3-protos"
