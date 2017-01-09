# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-nio-0.2.5.pom --download-uri http://central.maven.org/maven2/com/google/cloud/gcloud-java-nio/0.2.5/gcloud-java-nio-0.2.5-sources.jar --slot 0 --keywords "~amd64" --ebuild gcloud-java-nio-0.2.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="FileSystemProvider for Java NIO to access Google Cloud Storage transparently."
HOMEPAGE="https://github.com/GoogleCloudPlatform/gcloud-java/tree/master/gcloud-java-contrib/gcloud-java-nio"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/gcloud-java-nio/0.2.5/gcloud-java-nio-0.2.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud:gcloud-java-nio:0.2.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-nio-0.2.5.pom
# com.google.cloud:gcloud-java:0.2.5 -> >=app-maven/gcloud-java-bin-0.2.5:0
# com.google.code.findbugs:jsr305:2.0.1 -> >=app-maven/jsr305-bin-1.3.9:0
# com.google.guava:guava:19.0 -> >=dev-java/guava-10.0.1:10
# javax.inject:javax.inject:1 -> >=dev-java/javax-inject-1:0
# org.mockito:mockito-core:1.9.5 -> >=app-maven/mockito-core-1.9.5:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-nio-0.2.5.pom
CDEPEND="
	>=app-maven/gcloud-java-bin-0.2.5:0
	>=app-maven/jsr305-bin-1.3.9:0
	>=app-maven/mockito-core-1.9.5:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/javax-inject-1:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-nio-0.2.5.pom
# com.google.auto.service:auto-service:1.0-rc2 -> >=app-maven/auto-service-1.0_rc2:0
# com.google.auto.value:auto-value:1.1 -> >=app-maven/auto-value-1.1:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/auto-service-1.0_rc2:0
	>=app-maven/auto-value-1.1:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="gcloud-java-bin,jsr305-bin,guava-10,javax-inject,mockito-core"
JAVA_CLASSPATH_EXTRA="auto-service,auto-value"
