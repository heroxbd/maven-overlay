# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/reflections-0.9.10.pom --download-uri http://central.maven.org/maven2/org/reflections/reflections/0.9.10/reflections-0.9.10-sources.jar --slot 0 --keywords "~amd64" --ebuild reflections-0.9.10.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Reflections - a Java runtime metadata analysis"
HOMEPAGE="http://github.com/ronmamo/reflections"
SRC_URI="http://central.maven.org/maven2/org/reflections/reflections/0.9.10/reflections-0.9.10-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.reflections:reflections:0.9.10"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/reflections-0.9.10.pom
# com.google.code.findbugs:annotations:2.0.1 -> >=app-maven/annotations-bin-2.0.1:0
# com.google.code.gson:gson:1.4 -> >=dev-java/gson-2.7:2.7
# com.google.guava:guava:15.0 -> >=dev-java/guava-10.0.1:10
# dom4j:dom4j:1.6.1 -> >=app-maven/dom4j-1.6.1:0
# org.javassist:javassist:3.19.0-GA -> >=dev-java/javassist-3.18.2:3
# org.slf4j:slf4j-api:1.6.1 -> >=dev-java/slf4j-nop-1.7.7:0
# org.slf4j:slf4j-simple:1.6.1 -> >=dev-java/slf4j-nop-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/reflections-0.9.10.pom
CDEPEND="
	>=app-maven/annotations-bin-2.0.1:0
	>=app-maven/dom4j-1.6.1:0
	>=dev-java/gson-2.7:2.7
	>=dev-java/guava-10.0.1:10
	>=dev-java/javassist-3.18.2:3
	>=dev-java/slf4j-nop-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/reflections-0.9.10.pom
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# org.apache.commons:commons-vfs2:2.0 -> >=app-maven/commons-vfs2-2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/commons-vfs2-2.0:0
	>=app-maven/servlet-api-2.5:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="annotations-bin,gson-2.7,guava-10,dom4j,javassist-3,slf4j-nop,slf4j-nop"
JAVA_CLASSPATH_EXTRA="servlet-api,commons-vfs2"
