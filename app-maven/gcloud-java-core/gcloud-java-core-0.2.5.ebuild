# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-core-0.2.5.pom --download-uri http://central.maven.org/maven2/com/google/cloud/gcloud-java-core/0.2.5/gcloud-java-core-0.2.5-sources.jar --slot 0 --keywords "~amd64" --ebuild gcloud-java-core-0.2.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Core module for the gcloud-java."
HOMEPAGE="https://github.com/GoogleCloudPlatform/gcloud-java/tree/master/gcloud-java-core"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/gcloud-java-core/0.2.5/gcloud-java-core-0.2.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud:gcloud-java-core:0.2.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-core-0.2.5.pom
# com.google.api:gax:0.0.13 -> >=app-maven/gax-0.0.13:0
# com.google.api-client:google-api-client-appengine:1.21.0 -> >=app-maven/google-api-client-appengine-1.21.0:0
# com.google.auth:google-auth-library-credentials:0.3.1 -> >=app-maven/google-auth-library-credentials-0.3.0:0
# com.google.auth:google-auth-library-oauth2-http:0.3.1 -> >=app-maven/google-auth-library-oauth2-http-0.3.0:0
# com.google.guava:guava:19.0 -> >=dev-java/guava-10.0.1:10
# com.google.http-client:google-http-client:1.21.0 -> >=app-maven/google-http-client-1.22.0:0
# com.google.http-client:google-http-client-jackson:1.21.0 -> >=app-maven/google-http-client-jackson-1.21.0:0
# com.google.oauth-client:google-oauth-client:1.21.0 -> >=app-maven/google-oauth-client-1.22.0:0
# com.google.protobuf:protobuf-java:3.0.0-beta-3 -> >=app-maven/protobuf-java-2.5.0:0
# joda-time:joda-time:2.9.2 -> >=app-maven/joda-time-2.8.2:0
# org.json:json:20151123 -> >=dev-java/json-20150729:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gcloud-java-core-0.2.5.pom
CDEPEND="
	>=app-maven/gax-0.0.13:0
	>=app-maven/google-api-client-appengine-1.21.0:0
	>=app-maven/google-auth-library-credentials-0.3.0:0
	>=app-maven/google-auth-library-oauth2-http-0.3.0:0
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/google-http-client-jackson-1.21.0:0
	>=app-maven/google-oauth-client-1.22.0:0
	>=app-maven/joda-time-2.8.2:0
	>=app-maven/protobuf-java-2.5.0:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/json-20150729:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="gax,google-api-client-appengine,google-auth-library-credentials,google-auth-library-oauth2-http,guava-10,google-http-client,google-http-client-jackson,google-oauth-client,protobuf-java,joda-time,json"
