# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/opengl-api-gl1.1-android-2.1_r1.pom --download-uri http://central.maven.org/maven2/org/khronos/opengl-api/gl1.1-android-2.1_r1/opengl-api-gl1.1-android-2.1_r1-sources.jar --slot 0 --keywords "~amd64" --ebuild opengl-api-2.1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Android implementation of Khronos OpenGL Spec for the Google Android SDK."
HOMEPAGE="http://source.android.com/"
SRC_URI="http://central.maven.org/maven2/org/khronos/opengl-api/gl1.1-android-2.1_r1/opengl-api-gl1.1-android-2.1_r1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.khronos:opengl-api:gl1.1-android-2.1_r1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

