# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalatest_2.11-2.2.6.pom --download-uri http://central.maven.org/maven2/org/scalatest/scalatest_2.11/2.2.6/scalatest_2.11-2.2.6-sources.jar --slot 2.11 --keywords "~amd64" --ebuild scalatest-2.2.6.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="scalatest"
HOMEPAGE="http://www.scalatest.org"
SRC_URI="http://central.maven.org/maven2/org/scalatest/scalatest_2.11/2.2.6/scalatest_2.11-2.2.6-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scalatest:scalatest_2.11:2.2.6"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalatest_2.11-2.2.6.pom
# com.google.inject:guice:2.0 -> >=dev-java/guice-4.1:4
# junit:junit:4.10 -> >=dev-java/junit-4.12:4
# org.apache.ant:ant:1.7.1 -> >=dev-java/ant-core-1.9.2:0
# org.easymock:easymockclassextension:3.1 -> >=app-maven/easymockclassextension-3.1:0
# org.jmock:jmock-legacy:2.5.1 -> >=app-maven/jmock-legacy-2.5.1:0
# org.mockito:mockito-all:1.9.0 -> >=app-maven/mockito-all-1.9.0:0
# org.ow2.asm:asm-all:4.1 -> >=dev-java/asm-3.3.1:3
# org.pegdown:pegdown:1.4.2 -> >=app-maven/pegdown-1.4.2:0
# org.scala-lang:scala-library:2.11.7 -> >=app-maven/scala-library-2.11.7:0
# org.scala-lang:scala-reflect:2.11.7 -> >=app-maven/scala-reflect-2.11.7:0
# org.scala-lang.modules:scala-xml_2.11:1.0.2 -> >=app-maven/scala-xml-1.0.2:2.11
# org.scala-sbt:test-interface:1.0 -> >=app-maven/test-interface-1.0:0
# org.scalacheck:scalacheck_2.11:1.12.5 -> >=app-maven/scalacheck-1.12.5:2.11
# org.seleniumhq.selenium:selenium-java:2.35.0 -> >=app-maven/selenium-java-2.35.0:0
# org.testng:testng:6.8.7 -> >=dev-java/testng-6.9.10:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalatest_2.11-2.2.6.pom
CDEPEND="
	>=app-maven/easymockclassextension-3.1:0
	>=app-maven/jmock-legacy-2.5.1:0
	>=app-maven/mockito-all-1.9.0:0
	>=app-maven/pegdown-1.4.2:0
	>=app-maven/scala-library-2.11.7:0
	>=app-maven/scala-reflect-2.11.7:0
	>=app-maven/scala-xml-1.0.2:2.11
	>=app-maven/scalacheck-1.12.5:2.11
	>=app-maven/selenium-java-2.35.0:0
	>=app-maven/test-interface-1.0:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/asm-3.3.1:3
	>=dev-java/guice-4.1:4
	>=dev-java/junit-4.12:4
	>=dev-java/testng-6.9.10:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalatest_2.11-2.2.6.pom
# org.scala-lang:scala-compiler:2.11.7 -> >=dev-lang/scala-2.9.3:2.9
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-lang/scala-2.9.3:2.9"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guice-4,junit-4,ant-core,easymockclassextension,jmock-legacy,mockito-all,asm-3,pegdown,scala-library,scala-reflect,scala-xml-2.11,test-interface,scalacheck-2.11,selenium-java,testng"
JAVA_CLASSPATH_EXTRA="scala-2.9"
JAVA_TESTING_FRAMEWORK="junit"
