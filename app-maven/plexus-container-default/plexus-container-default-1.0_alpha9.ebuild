# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/plexus-container-default-1.0-alpha-9-stable-1.pom --download-uri http://central.maven.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9-stable-1/plexus-container-default-1.0-alpha-9-stable-1-sources.jar --slot 0 --keywords "~amd64" --ebuild plexus-container-default-1.0_alpha9.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-9-stable-1/plexus-container-default-1.0-alpha-9-stable-1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.codehaus.plexus:plexus-container-default:1.0-alpha-9-stable-1"

# Common dependencies
# POM: ../poms/plexus-container-default-1.0-alpha-9-stable-1.pom
# classworlds:classworlds:1.1-alpha-2 -> >=app-maven/classworlds-bin-1.1:0
# junit:junit:3.8.1 -> >=dev-java/junit-4.12:4
# org.codehaus.plexus:plexus-utils:1.0.4 -> >=app-maven/plexus-utils-1.5.6:0
# POM: ../poms/plexus-container-default-1.0-alpha-9-stable-1.pom
CDEPEND="
	>=app-maven/classworlds-bin-1.1:0
	>=app-maven/plexus-utils-1.5.6:0
	>=dev-java/junit-4.12:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="classworlds-bin,junit-4,plexus-utils"
JAVA_TESTING_FRAMEWORK="junit"
