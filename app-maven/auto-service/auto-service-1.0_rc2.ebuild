# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/auto-service-1.0-rc2.pom --download-uri http://central.maven.org/maven2/com/google/auto/service/auto-service/1.0-rc2/auto-service-1.0-rc2-sources.jar --slot 0 --keywords "~amd64" --ebuild auto-service-1.0_rc2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Provider-configuration files for ServiceLoader."
HOMEPAGE="https://github.com/google/auto/auto-service"
SRC_URI="http://central.maven.org/maven2/com/google/auto/service/auto-service/1.0-rc2/auto-service-1.0-rc2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.auto.service:auto-service:1.0-rc2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/auto-service-1.0-rc2.pom
# com.google.auto:auto-common:0.3 -> >=app-maven/auto-common-0.3:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/auto-service-1.0-rc2.pom
CDEPEND="
	>=app-maven/auto-common-0.3:0
	>=dev-java/guava-10.0.1:10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="auto-common,guava-10"
