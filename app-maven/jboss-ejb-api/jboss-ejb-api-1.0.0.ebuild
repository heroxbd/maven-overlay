# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jboss-ejb-api_3.1_spec-1.0.0.CR2.pom --download-uri http://central.maven.org/maven2/org/jboss/spec/javax/ejb/jboss-ejb-api_3.1_spec/1.0.0.CR2/jboss-ejb-api_3.1_spec-1.0.0.CR2-sources.jar --slot 3.1_spec --keywords "~amd64" --ebuild jboss-ejb-api-1.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Java EJB 3.1 API classes"
HOMEPAGE="http://www.jboss.org/jboss-ejb-api_3.1_spec/"
SRC_URI="http://central.maven.org/maven2/org/jboss/spec/javax/ejb/jboss-ejb-api_3.1_spec/1.0.0.CR2/jboss-ejb-api_3.1_spec-1.0.0.CR2-sources.jar"
LICENSE=""
SLOT="3.1_spec"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.spec.javax.ejb:jboss-ejb-api_3.1_spec:1.0.0.CR2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jboss-ejb-api_3.1_spec-1.0.0.CR2.pom
# javax.xml:jaxrpc-api:1.1 -> >=app-maven/jaxrpc-api-bin-1.1:0
# org.jboss.spec.javax.transaction:jboss-transaction-api_1.1_spec:1.0.0.Beta1 -> >=app-maven/jboss-transaction-api-1.0.0:1.1_spec
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jboss-ejb-api_3.1_spec-1.0.0.CR2.pom
CDEPEND="
	>=app-maven/jaxrpc-api-bin-1.1:0
	>=app-maven/jboss-transaction-api-1.0.0:1.1_spec"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.5
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.5"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jaxrpc-api-bin,jboss-transaction-api-1.1_spec"
