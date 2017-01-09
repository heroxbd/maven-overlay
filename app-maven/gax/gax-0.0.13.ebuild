# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gax-0.0.13.pom --download-uri http://central.maven.org/maven2/com/google/api/gax/0.0.13/gax-0.0.13-sources.jar --slot 0 --keywords "~amd64" --ebuild gax-0.0.13.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Google Api eXtensions"
HOMEPAGE="https://github.com/googleapis"
SRC_URI="http://central.maven.org/maven2/com/google/api/gax/0.0.13/gax-0.0.13-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.api:gax:0.0.13"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gax-0.0.13.pom
# com.google.auto.value:auto-value:1.1 -> >=app-maven/auto-value-1.1:0
# com.google.code.findbugs:jsr305:3.0.0 -> >=app-maven/jsr305-bin-1.3.9:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# com.google.inject:guice:4.0 -> >=dev-java/guice-4.0:4
# io.grpc:grpc-all:0.9.0 -> >=app-maven/grpc-all-0.9.0:0
# joda-time:joda-time:2.8.2 -> >=app-maven/joda-time-2.8.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gax-0.0.13.pom
CDEPEND="
	>=app-maven/auto-value-1.1:0
	>=app-maven/grpc-all-0.9.0:0
	>=app-maven/joda-time-2.8.2:0
	>=app-maven/jsr305-bin-1.3.9:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/guice-4.0:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="auto-value,jsr305-bin,guava-10,guice-4,grpc-all,joda-time"
