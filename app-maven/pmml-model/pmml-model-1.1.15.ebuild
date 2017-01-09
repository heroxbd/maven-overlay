# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-model-1.1.15.pom --download-uri http://central.maven.org/maven2/org/jpmml/pmml-model/1.1.15/pmml-model-1.1.15-sources.jar --slot 0 --keywords "~amd64" --ebuild pmml-model-1.1.15.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JPMML class model"
HOMEPAGE="http://www.jpmml.org/pmml-model"
SRC_URI="http://central.maven.org/maven2/org/jpmml/pmml-model/1.1.15/pmml-model-1.1.15-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jpmml:pmml-model:1.1.15"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-model-1.1.15.pom
# com.sun.xml.bind:jaxb-impl:2.2.7 -> >=app-maven/jaxb-impl-2.2.3.1:0
# org.jpmml:pmml-agent:1.1.15 -> >=app-maven/pmml-agent-1.1.15:0
# org.jpmml:pmml-schema:1.1.15 -> >=app-maven/pmml-schema-1.1.15:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-model-1.1.15.pom
CDEPEND="
	>=app-maven/jaxb-impl-2.2.3.1:0
	>=app-maven/pmml-agent-1.1.15:0
	>=app-maven/pmml-schema-1.1.15:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pmml-model-1.1.15.pom
# org.eclipse.persistence:org.eclipse.persistence.moxy:2.5.2 -> >=app-maven/org-eclipse-persistence-moxy-2.5.2:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/org-eclipse-persistence-moxy-2.5.2:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jaxb-impl,pmml-agent,pmml-schema"
JAVA_CLASSPATH_EXTRA="org-eclipse-persistence-moxy"
