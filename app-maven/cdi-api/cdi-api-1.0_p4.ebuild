# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cdi-api-1.0-SP4.pom --download-uri http://central.maven.org/maven2/javax/enterprise/cdi-api/1.0-SP4/cdi-api-1.0-SP4-sources.jar --slot 0 --keywords "~amd64" --ebuild cdi-api-1.0_p4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="APIs for JSR-299: Contexts and Dependency Injection for Java EE"
HOMEPAGE="http://www.seamframework.org/Weld"
SRC_URI="http://central.maven.org/maven2/javax/enterprise/cdi-api/1.0-SP4/cdi-api-1.0-SP4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="javax.enterprise:cdi-api:1.0-SP4"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cdi-api-1.0-SP4.pom
# javax.annotation:jsr250-api:1.0 -> >=app-maven/jsr250-api-1.0:0
# javax.el:el-api:2.2 -> >=app-maven/el-api-2.2:0
# javax.inject:javax.inject:1 -> >=dev-java/javax-inject-1:0
# org.jboss.spec.javax.ejb:jboss-ejb-api_3.1_spec:1.0.0.CR2 -> >=app-maven/jboss-ejb-api-1.0.0:3.1_spec
# org.jboss.spec.javax.interceptor:jboss-interceptors-api_1.1_spec:1.0.0.Beta1 -> >=app-maven/jboss-interceptors-api-1.0.0:1.1_spec
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cdi-api-1.0-SP4.pom
CDEPEND="
	>=app-maven/el-api-2.2:0
	>=app-maven/jboss-ejb-api-1.0.0:3.1_spec
	>=app-maven/jboss-interceptors-api-1.0.0:1.1_spec
	>=app-maven/jsr250-api-1.0:0
	>=dev-java/javax-inject-1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr250-api,el-api,javax-inject,jboss-ejb-api-3.1_spec,jboss-interceptors-api-1.1_spec"
