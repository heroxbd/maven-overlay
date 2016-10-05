# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/grizzly-framework-2.1.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/grizzly/grizzly-framework/2.1.2/grizzly-framework-2.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild grizzly-framework-2.1.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java.net - The Source for Java Technology Collaboration"
HOMEPAGE="http://grizzly.java.net/grizzly-framework"
SRC_URI="http://central.maven.org/maven2/org/glassfish/grizzly/grizzly-framework/2.1.2/grizzly-framework-2.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.glassfish.grizzly:grizzly-framework:2.1.2"

# Common dependencies
# POM: ../poms/grizzly-framework-2.1.2.pom
# org.glassfish.gmbal:gmbal-api-only:3.0.0-b023 -> >=app-maven/gmbal-api-only-bin-3.0.0_beta023:0
# POM: ../poms/grizzly-framework-2.1.2.pom
CDEPEND="
	>=app-maven/gmbal-api-only-bin-3.0.0_beta023:0"
# Compile dependencies
# POM: ../poms/grizzly-framework-2.1.2.pom
# org.glassfish.gmbal:gmbal:3.0.0-b023 -> >=app-maven/gmbal-bin-3.0.0_beta023:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/gmbal-bin-3.0.0_beta023:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="gmbal-api-only-bin"
JAVA_CLASSPATH_EXTRA="gmbal-bin"
