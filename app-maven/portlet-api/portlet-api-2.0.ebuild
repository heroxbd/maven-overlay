# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/portlet-api-2.0.pom --download-uri http://central.maven.org/maven2/javax/portlet/portlet-api/2.0/portlet-api-2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild portlet-api-2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Java Portlet API version 2.0 developed by the Java Community Process JSR-286 Expert Group."
HOMEPAGE="http://www.jcp.org/en/jsr/detail?id=286"
SRC_URI="http://central.maven.org/maven2/javax/portlet/portlet-api/2.0/portlet-api-2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="javax.portlet:portlet-api:2.0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/portlet-api-2.0.pom
# javax.servlet:servlet-api:2.4 -> >=app-maven/servlet-api-2.5:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/servlet-api-2.5:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="servlet-api"
