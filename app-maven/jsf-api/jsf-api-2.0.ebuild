# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsf-api-2.0.pom --download-uri http://central.maven.org/maven2/javax/faces/jsf-api/2.0/jsf-api-2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild jsf-api-2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="This is the master POM file for Sun's Implementation of
        the JSF 2.0 Specification."
HOMEPAGE="http://java.sun.com/javaee/javaserverfaces/"
SRC_URI="http://central.maven.org/maven2/javax/faces/jsf-api/2.0/jsf-api-2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="javax.faces:jsf-api:2.0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsf-api-2.0.pom
# javax.el:el-api:1.0 -> >=app-maven/el-api-2.2:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# javax.servlet.jsp:jsp-api:2.1 -> >=app-maven/jsp-api-2.1:0
# jstl:jstl:1.2 -> >=app-maven/jstl-bin-1.2:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/el-api-2.2:0
	>=app-maven/jsp-api-2.1:0
	>=app-maven/jstl-bin-1.2:0
	>=app-maven/servlet-api-2.5:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="el-api,servlet-api,jsp-api,jstl-bin"
