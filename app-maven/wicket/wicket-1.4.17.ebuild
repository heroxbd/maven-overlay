# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wicket-1.4.17.pom --download-uri http://central.maven.org/maven2/org/apache/wicket/wicket/1.4.17/wicket-1.4.17-sources.jar --slot 0 --keywords "~amd64" --ebuild wicket-1.4.17.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Wicket is a Java web application framework that takes simplicity, 
		separation of concerns and ease of development to a whole new level. 
		Wicket pages can be mocked up, previewed and later revised using 
		standard WYSIWYG HTML design tools. Dynamic content processing and 
		form handling is all handled in Java code using a first-class 
		component model backed by POJO data beans that can easily be 
		persisted using your favorite technology."
HOMEPAGE="http://wicket.apache.org/wicket/wicket"
SRC_URI="http://central.maven.org/maven2/org/apache/wicket/wicket/1.4.17/wicket-1.4.17-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.wicket:wicket:1.4.17"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wicket-1.4.17.pom
# org.slf4j:slf4j-api:1.5.8 -> >=dev-java/slf4j-nop-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wicket-1.4.17.pom
CDEPEND="
	>=dev-java/slf4j-nop-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/wicket-1.4.17.pom
# javax.portlet:portlet-api:2.0 -> >=app-maven/portlet-api-2.0:0
# javax.servlet:servlet-api:2.3 -> >=app-maven/servlet-api-2.5:0
# junit:junit:4.8.1 -> >=dev-java/junit-4.12:4
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/portlet-api-2.0:0
	>=app-maven/servlet-api-2.5:0
	>=dev-java/junit-4.12:4"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="slf4j-nop"
JAVA_CLASSPATH_EXTRA="portlet-api,servlet-api,junit-4"
