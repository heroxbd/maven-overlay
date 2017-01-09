# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-0.2.5.pom --download-uri http://central.maven.org/maven2/com/google/cloud/gcloud-java/0.2.5/gcloud-java-0.2.5.jar --slot 0 --keywords "~amd64" --ebuild gcloud-java-bin-0.2.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Java idiomatic client for Google Cloud Platform services."
HOMEPAGE="https://github.com/GoogleCloudPlatform/gcloud-java/tree/master/gcloud-java"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/gcloud-java/0.2.5/gcloud-java-0.2.5.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud:gcloud-java:0.2.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-0.2.5.pom
# com.google.cloud:gcloud-java-bigquery:0.2.5 -> >=app-maven/gcloud-java-bigquery-0.2.5:0
# com.google.cloud:gcloud-java-compute:0.2.5 -> >=app-maven/gcloud-java-compute-0.2.5:0
# com.google.cloud:gcloud-java-core:0.2.5 -> >=app-maven/gcloud-java-core-0.2.5:0
# com.google.cloud:gcloud-java-datastore:0.2.5 -> >=app-maven/gcloud-java-datastore-0.2.5:0
# com.google.cloud:gcloud-java-dns:0.2.5 -> >=app-maven/gcloud-java-dns-0.2.5:0
# com.google.cloud:gcloud-java-pubsub:0.2.5 -> >=app-maven/gcloud-java-pubsub-0.2.5:0
# com.google.cloud:gcloud-java-resourcemanager:0.2.5 -> >=app-maven/gcloud-java-resourcemanager-0.2.5:0
# com.google.cloud:gcloud-java-storage:0.2.5 -> >=app-maven/gcloud-java-storage-0.2.5:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-0.2.5.pom
CDEPEND="
	>=app-maven/gcloud-java-bigquery-0.2.5:0
	>=app-maven/gcloud-java-compute-0.2.5:0
	>=app-maven/gcloud-java-core-0.2.5:0
	>=app-maven/gcloud-java-datastore-0.2.5:0
	>=app-maven/gcloud-java-dns-0.2.5:0
	>=app-maven/gcloud-java-pubsub-0.2.5:0
	>=app-maven/gcloud-java-resourcemanager-0.2.5:0
	>=app-maven/gcloud-java-storage-0.2.5:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="gcloud-java-bigquery,gcloud-java-compute,gcloud-java-core,gcloud-java-datastore,gcloud-java-dns,gcloud-java-pubsub,gcloud-java-resourcemanager,gcloud-java-storage"
