# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kryo-serializers-0.37.pom --download-uri http://central.maven.org/maven2/de/javakaffee/kryo-serializers/0.37/kryo-serializers-0.37-sources.jar --slot 0 --keywords "~amd64" --ebuild kryo-serializers-0.37.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Additional kryo (http://kryo.googlecode.com) serializers for standard jdk types (e.g. currency, jdk proxies) and some for external libs (e.g. joda time, cglib proxies, wicket)."
HOMEPAGE="https://github.com/magro/kryo-serializers"
SRC_URI="http://central.maven.org/maven2/de/javakaffee/kryo-serializers/0.37/kryo-serializers-0.37-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="de.javakaffee:kryo-serializers:0.37"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kryo-serializers-0.37.pom
# cglib:cglib:3.1 -> >=app-maven/cglib-3.1:0
# com.esotericsoftware:kryo:3.0.3 -> >=app-maven/kryo-3.0.3:0
# com.google.guava:guava:17.0 -> >=dev-java/guava-10.0.1:10
# com.google.protobuf:protobuf-java:2.6.1 -> >=app-maven/protobuf-java-2.5.0:0
# joda-time:joda-time:1.6.2 -> >=app-maven/joda-time-2.9.2:0
# org.apache.wicket:wicket:1.4.17 -> >=app-maven/wicket-1.4.17:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kryo-serializers-0.37.pom
CDEPEND="
	>=app-maven/cglib-3.1:0
	>=app-maven/joda-time-2.9.2:0
	>=app-maven/kryo-3.0.3:0
	>=app-maven/protobuf-java-2.5.0:0
	>=app-maven/wicket-1.4.17:0
	>=dev-java/guava-10.0.1:10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="cglib,kryo,guava-10,protobuf-java,joda-time,wicket"
