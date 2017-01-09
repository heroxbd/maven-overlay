# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-agent-1.1.15.pom --download-uri http://central.maven.org/maven2/org/jpmml/pmml-agent/1.1.15/pmml-agent-1.1.15-sources.jar --slot 0 --keywords "~amd64" --ebuild pmml-agent-1.1.15.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JPMML Java agent for class model"
HOMEPAGE="http://www.jpmml.org/pmml-agent"
SRC_URI="http://central.maven.org/maven2/org/jpmml/pmml-agent/1.1.15/pmml-agent-1.1.15-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jpmml:pmml-agent:1.1.15"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-agent-1.1.15.pom
# org.javassist:javassist:[3.13.0-GA, 3.19.0-GA] -> >=dev-java/javassist-3.18.2:3
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-agent-1.1.15.pom
CDEPEND="
	>=dev-java/javassist-3.18.2:3"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javassist-3"
