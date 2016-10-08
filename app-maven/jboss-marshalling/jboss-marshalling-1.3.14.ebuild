# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jboss-marshalling-1.3.14.GA.pom --download-uri http://central.maven.org/maven2/org/jboss/marshalling/jboss-marshalling/1.3.14.GA/jboss-marshalling-1.3.14.GA-sources.jar --slot 0 --keywords "~amd64" --ebuild jboss-marshalling-1.3.14.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JBoss Marshalling API"
HOMEPAGE="http://www.jboss.org/jboss-marshalling-parent/jboss-marshalling"
SRC_URI="http://central.maven.org/maven2/org/jboss/marshalling/jboss-marshalling/1.3.14.GA/jboss-marshalling-1.3.14.GA-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.marshalling:jboss-marshalling:1.3.14.GA"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jboss-marshalling-1.3.14.GA.pom
# org.jboss.modules:jboss-modules:1.1.0.Beta1 -> >=dev-java/jboss-modules-1.3.3:0
DEPEND="
	>=virtual/jdk-1.6
	app-arch/unzip
	>=dev-java/jboss-modules-1.3.3:0"

RDEPEND="
	>=virtual/jre-1.6"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="jboss-modules"
