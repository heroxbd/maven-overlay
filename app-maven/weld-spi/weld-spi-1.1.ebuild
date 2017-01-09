# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-spi-1.1.Final.pom --download-uri http://central.maven.org/maven2/org/jboss/weld/weld-spi/1.1.Final/weld-spi-1.1.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild weld-spi-1.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="APIs for Weld, the reference implementation of JSR 299: Contexts and Dependency Injection for Java EE"
HOMEPAGE="http://www.seamframework.org/Weld"
SRC_URI="http://central.maven.org/maven2/org/jboss/weld/weld-spi/1.1.Final/weld-spi-1.1.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.weld:weld-spi:1.1.Final"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-spi-1.1.Final.pom
# javax.annotation:jsr250-api:1.0 -> >=app-maven/jsr250-api-1.0:0
# javax.enterprise:cdi-api:1.0-SP3 -> >=app-maven/cdi-api-1.0:0
# javax.faces:jsf-api:1.2_13 -> >=app-maven/jsf-api-2.0:0
# javax.persistence:persistence-api:1.0 -> >=app-maven/persistence-api-1.0:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# javax.transaction:jta:1.1 -> >=app-maven/jta-1.1:0
# javax.validation:validation-api:1.0.0.GA -> >=app-maven/validation-api-1.0.0:0
# org.jboss.spec.javax.ejb:jboss-ejb-api_3.1_spec:1.0.0.CR2 -> >=app-maven/jboss-ejb-api-1.0.0:3.1_spec
# org.jboss.spec.javax.interceptor:jboss-interceptors-api_1.1_spec:1.0.0.Beta1 -> >=app-maven/jboss-interceptors-api-1.0.0:1.1_spec
# org.jboss.weld:weld-api:1.1.Final -> >=app-maven/weld-api-1.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-spi-1.1.Final.pom
CDEPEND="
	>=app-maven/cdi-api-1.0:0
	>=app-maven/jboss-ejb-api-1.0.0:3.1_spec
	>=app-maven/jboss-interceptors-api-1.0.0:1.1_spec
	>=app-maven/jsf-api-2.0:0
	>=app-maven/jsr250-api-1.0:0
	>=app-maven/jta-1.1:0
	>=app-maven/persistence-api-1.0:0
	>=app-maven/servlet-api-2.5:0
	>=app-maven/validation-api-1.0.0:0
	>=app-maven/weld-api-1.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr250-api,cdi-api,jsf-api,persistence-api,servlet-api,jta,validation-api,jboss-ejb-api-3.1_spec,jboss-interceptors-api-1.1_spec,weld-api"
