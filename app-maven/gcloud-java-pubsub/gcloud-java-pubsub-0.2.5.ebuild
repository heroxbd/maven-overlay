# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-pubsub-0.2.5.pom --download-uri http://central.maven.org/maven2/com/google/cloud/gcloud-java-pubsub/0.2.5/gcloud-java-pubsub-0.2.5-sources.jar --slot 0 --keywords "~amd64" --ebuild gcloud-java-pubsub-0.2.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java idiomatic client for Google Cloud Pub/Sub."
HOMEPAGE="https://github.com/GoogleCloudPlatform/gcloud-java/tree/master/gcloud-java-pubsub"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/gcloud-java-pubsub/0.2.5/gcloud-java-pubsub-0.2.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud:gcloud-java-pubsub:0.2.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-pubsub-0.2.5.pom
# com.google.api.grpc:grpc-pubsub-v1:0.0.2 -> >=app-maven/grpc-pubsub-v1-0.0.2:0
# com.google.auto.value:auto-value:1.1 -> >=app-maven/auto-value-1.1:0
# com.google.cloud:gcloud-java-core:0.2.5 -> >=app-maven/gcloud-java-core-0.2.5:0
# io.grpc:grpc-all:0.14.1 -> >=app-maven/grpc-all-0.9.0:0
# io.netty:netty-tcnative-boringssl-static:1.1.33.Fork17 -> >=dev-java/netty-tcnative-1.1.33.15:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-pubsub-0.2.5.pom
CDEPEND="
	>=app-maven/auto-value-1.1:0
	>=app-maven/gcloud-java-core-0.2.5:0
	>=app-maven/grpc-all-0.9.0:0
	>=app-maven/grpc-pubsub-v1-0.0.2:0
	>=dev-java/netty-tcnative-1.1.33.15:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="grpc-pubsub-v1,auto-value,gcloud-java-core,grpc-all,netty-tcnative"
