# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-core-1.1.33.Final.pom --download-uri http://central.maven.org/maven2/org/jboss/weld/weld-core/1.1.33.Final/weld-core-1.1.33.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild weld-core-1.1.33.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Weld's implementation of CDI"
HOMEPAGE="http://www.seamframework.org/Weld"
SRC_URI="http://central.maven.org/maven2/org/jboss/weld/weld-core/1.1.33.Final/weld-core-1.1.33.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.weld:weld-core:1.1.33.Final"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-core-1.1.33.Final.pom
# ch.qos.cal10n:cal10n-api:0.7.7 -> >=app-maven/cal10n-api-0.7.7:0
# com.google.guava:guava:13.0.1 -> >=dev-java/guava-10.0.1:10
# javax.annotation:jsr250-api:1.0 -> >=app-maven/jsr250-api-1.0:0
# javax.el:el-api:2.2 -> >=app-maven/el-api-2.2:0
# javax.enterprise:cdi-api:1.0-SP4 -> >=app-maven/cdi-api-1.0:0
# javax.faces:jsf-api:2.0 -> >=app-maven/jsf-api-2.0:0
# javax.persistence:persistence-api:1.0 -> >=app-maven/persistence-api-1.0:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# javax.servlet.jsp:jsp-api:2.1 -> >=app-maven/jsp-api-2.1:0
# javax.transaction:jta:1.1 -> >=app-maven/jta-1.1:0
# javax.validation:validation-api:1.0.0.GA -> >=app-maven/validation-api-1.0.0:0
# net.sourceforge.findbugs:annotations:1.3.2 -> >=app-maven/annotations-bin-1.3.2:0
# org.javassist:javassist:3.18.1-GA -> >=dev-java/javassist-3.18.2:3
# org.jboss.spec.javax.ejb:jboss-ejb-api_3.1_spec:1.0.0.CR2 -> >=app-maven/jboss-ejb-api-1.0.0:3.1_spec
# org.jboss.spec.javax.interceptor:jboss-interceptors-api_1.1_spec:1.0.0.Beta1 -> >=app-maven/jboss-interceptors-api-1.0.0:1.1_spec
# org.jboss.weld:weld-api:1.1.Final -> >=app-maven/weld-api-1.1:0
# org.jboss.weld:weld-spi:1.1.Final -> >=app-maven/weld-spi-1.1:0
# org.slf4j:slf4j-api:1.7.2 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.slf4j:slf4j-ext:1.7.2 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/weld-core-1.1.33.Final.pom
CDEPEND="
	>=app-maven/annotations-bin-1.3.2:0
	>=app-maven/cal10n-api-0.7.7:0
	>=app-maven/cdi-api-1.0:0
	>=app-maven/el-api-2.2:0
	>=app-maven/jboss-ejb-api-1.0.0:3.1_spec
	>=app-maven/jboss-interceptors-api-1.0.0:1.1_spec
	>=app-maven/jsf-api-2.0:0
	>=app-maven/jsp-api-2.1:0
	>=app-maven/jsr250-api-1.0:0
	>=app-maven/jta-1.1:0
	>=app-maven/persistence-api-1.0:0
	>=app-maven/servlet-api-2.5:0
	>=app-maven/validation-api-1.0.0:0
	>=app-maven/weld-api-1.1:0
	>=app-maven/weld-spi-1.1:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/javassist-3.18.2:3
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="cal10n-api,guava-10,jsr250-api,el-api,cdi-api,jsf-api,persistence-api,servlet-api,jsp-api,jta,validation-api,annotations-bin,javassist-3,jboss-ejb-api-3.1_spec,jboss-interceptors-api-1.1_spec,weld-api,weld-spi,slf4j-log4j12,slf4j-log4j12"
