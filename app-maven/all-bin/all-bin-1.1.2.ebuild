# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/all-1.1.2.pom --download-uri http://central.maven.org/maven2/com/github/fommil/netlib/all/1.1.2/all-1.1.2.jar --slot 0 --keywords "~amd64" --ebuild all-bin-1.1.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Mission-critical components for linear algebra systems."
HOMEPAGE="https://github.com/fommil/netlib-java/all"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.github.fommil.netlib:all:1.1.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/all-1.1.2.pom
# com.github.fommil.netlib:core:1.1.2 -> >=app-maven/core-1.1.2:0
# com.github.fommil.netlib:netlib-native_ref-linux-armhf:1.1 -> >=app-maven/netlib-native-1.1:ref-linux-armhf
# com.github.fommil.netlib:netlib-native_ref-linux-i686:1.1 -> >=app-maven/netlib-native-1.1:ref-linux-i686
# com.github.fommil.netlib:netlib-native_ref-linux-x86_64:1.1 -> >=app-maven/netlib-native-1.1:ref-linux-x86_64
# com.github.fommil.netlib:netlib-native_ref-osx-x86_64:1.1 -> >=app-maven/netlib-native-1.1:ref-osx-x86_64
# com.github.fommil.netlib:netlib-native_ref-win-i686:1.1 -> >=app-maven/netlib-native-1.1:ref-win-i686
# com.github.fommil.netlib:netlib-native_ref-win-x86_64:1.1 -> >=app-maven/netlib-native-1.1:ref-win-x86_64
# com.github.fommil.netlib:netlib-native_system-linux-armhf:1.1 -> >=app-maven/netlib-native-1.1:system-linux-armhf
# com.github.fommil.netlib:netlib-native_system-linux-i686:1.1 -> >=app-maven/netlib-native-1.1:system-linux-i686
# com.github.fommil.netlib:netlib-native_system-linux-x86_64:1.1 -> >=app-maven/netlib-native-1.1:system-linux-x86_64
# com.github.fommil.netlib:netlib-native_system-osx-x86_64:1.1 -> >=app-maven/netlib-native-1.1:system-osx-x86_64
# com.github.fommil.netlib:netlib-native_system-win-i686:1.1 -> >=app-maven/netlib-native-1.1:system-win-i686
# com.github.fommil.netlib:netlib-native_system-win-x86_64:1.1 -> >=app-maven/netlib-native-1.1:system-win-x86_64
# net.sourceforge.f2j:arpack_combined_all:0.1 -> >=app-maven/arpack-bin-0.1:combined_all
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/all-1.1.2.pom
CDEPEND="
	>=app-maven/arpack-bin-0.1:combined_all
	>=app-maven/core-1.1.2:0
	>=app-maven/netlib-native-1.1:ref-linux-armhf
	>=app-maven/netlib-native-1.1:ref-linux-i686
	>=app-maven/netlib-native-1.1:ref-linux-x86_64
	>=app-maven/netlib-native-1.1:ref-osx-x86_64
	>=app-maven/netlib-native-1.1:ref-win-i686
	>=app-maven/netlib-native-1.1:ref-win-x86_64
	>=app-maven/netlib-native-1.1:system-linux-armhf
	>=app-maven/netlib-native-1.1:system-linux-i686
	>=app-maven/netlib-native-1.1:system-linux-x86_64
	>=app-maven/netlib-native-1.1:system-osx-x86_64
	>=app-maven/netlib-native-1.1:system-win-i686
	>=app-maven/netlib-native-1.1:system-win-x86_64"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="core,netlib-native-ref-linux-armhf,netlib-native-ref-linux-i686,netlib-native-ref-linux-x86_64,netlib-native-ref-osx-x86_64,netlib-native-ref-win-i686,netlib-native-ref-win-x86_64,netlib-native-system-linux-armhf,netlib-native-system-linux-i686,netlib-native-system-linux-x86_64,netlib-native-system-osx-x86_64,netlib-native-system-win-i686,netlib-native-system-win-x86_64,arpack-bin-combined_all"
