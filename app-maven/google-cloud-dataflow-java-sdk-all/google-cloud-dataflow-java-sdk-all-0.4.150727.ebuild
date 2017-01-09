# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-sdk-all-0.4.150727.pom --download-uri http://central.maven.org/maven2/com/google/cloud/dataflow/google-cloud-dataflow-java-sdk-all/0.4.150727/google-cloud-dataflow-java-sdk-all-0.4.150727-sources.jar --slot 0 --keywords "~amd64" --ebuild google-cloud-dataflow-java-sdk-all-0.4.150727.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Google Cloud Dataflow Java SDK provides a simple, Java-based
    interface for processing virtually any size data using Google cloud
    resources. This artifact includes entire Dataflow Java SDK."
HOMEPAGE="http://cloud.google.com/dataflow"
SRC_URI="http://central.maven.org/maven2/com/google/cloud/dataflow/google-cloud-dataflow-java-sdk-all/0.4.150727/google-cloud-dataflow-java-sdk-all-0.4.150727-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.cloud.dataflow:google-cloud-dataflow-java-sdk-all:0.4.150727"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-sdk-all-0.4.150727.pom
# com.fasterxml.jackson.core:jackson-annotations:2.4.2 -> >=dev-java/jackson-annotations-2.8.5:2
# com.fasterxml.jackson.core:jackson-core:2.4.2 -> >=dev-java/jackson-2.8.5:2
# com.fasterxml.jackson.core:jackson-databind:2.4.2 -> >=dev-java/jackson-databind-2.8.5:2
# com.google.api-client:google-api-client:1.20.0 -> >=app-maven/google-api-client-1.22.0:0
# com.google.apis:google-api-services-bigquery:v2-rev198-1.20.0 -> >=app-maven/google-api-services-bigquery-2.303.1.22.0:0
# com.google.apis:google-api-services-compute:v1-rev53-1.20.0 -> >=app-maven/google-api-services-compute-1.103.1.21.0:0
# com.google.apis:google-api-services-dataflow:v1b3-rev5-1.20.0 -> >=app-maven/google-api-services-dataflow-13.5.1.20.0:0
# com.google.apis:google-api-services-datastore-protobuf:v1beta2-rev1-2.1.2 -> >=app-maven/google-api-services-datastore-protobuf-1.2.1.2.1.2:0
# com.google.apis:google-api-services-pubsub:v1beta2-rev1-1.20.0 -> >=app-maven/google-api-services-pubsub-1.2.1.1.20.0:0
# com.google.apis:google-api-services-storage:v1-rev25-1.19.1 -> >=app-maven/google-api-services-storage-1.62.1.21.0:0
# com.google.auto.service:auto-service:1.0-rc2 -> >=app-maven/auto-service-1.0_rc2:0
# com.google.cloud.bigdataoss:gcsio:1.4.1 -> >=app-maven/gcsio-1.4.1:0
# com.google.cloud.bigdataoss:util:1.4.1 -> >=app-maven/util-1.4.1:0
# com.google.cloud.dataflow:google-cloud-dataflow-java-proto-library-all:0.4.150721 -> >=app-maven/google-cloud-dataflow-java-proto-library-all-0.4.150721:0
# com.google.http-client:google-http-client:1.20.0 -> >=app-maven/google-http-client-1.22.0:0
# com.google.http-client:google-http-client-jackson2:1.20.0 -> >=app-maven/google-http-client-jackson2-1.22.0:0
# com.google.oauth-client:google-oauth-client-java6:1.20.0 -> >=app-maven/google-oauth-client-java6-1.20.0:0
# joda-time:joda-time:2.4 -> >=app-maven/joda-time-2.9.2:0
# org.apache.avro:avro:1.7.7 -> >=app-maven/avro-1.7.7:0
# org.apache.commons:commons-compress:1.9 -> >=app-maven/commons-compress-1.4.1:0
# org.codehaus.woodstox:stax2-api:3.1.1 -> >=dev-java/stax2-api-4.0.0:0
# org.codehaus.woodstox:woodstox-core-asl:4.1.2 -> >=app-maven/woodstox-core-asl-4.1.2:0
# org.eclipse.jetty:jetty-jmx:9.2.10.v20150310 -> >=app-maven/jetty-jmx-8.1.9_p20130131:0
# org.eclipse.jetty:jetty-server:9.2.10.v20150310 -> >=app-maven/jetty-server-8.1.9_p20130131:0
# org.slf4j:slf4j-api:1.7.7 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.slf4j:slf4j-jdk14:1.7.7 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.tukaani:xz:1.5 -> >=app-maven/xz-1.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-sdk-all-0.4.150727.pom
CDEPEND="
	>=app-maven/auto-service-1.0_rc2:0
	>=app-maven/avro-1.7.7:0
	>=app-maven/commons-compress-1.4.1:0
	>=app-maven/gcsio-1.4.1:0
	>=app-maven/google-api-client-1.22.0:0
	>=app-maven/google-api-services-bigquery-2.303.1.22.0:0
	>=app-maven/google-api-services-compute-1.103.1.21.0:0
	>=app-maven/google-api-services-dataflow-13.5.1.20.0:0
	>=app-maven/google-api-services-datastore-protobuf-1.2.1.2.1.2:0
	>=app-maven/google-api-services-pubsub-1.2.1.1.20.0:0
	>=app-maven/google-api-services-storage-1.62.1.21.0:0
	>=app-maven/google-cloud-dataflow-java-proto-library-all-0.4.150721:0
	>=app-maven/google-http-client-1.22.0:0
	>=app-maven/google-http-client-jackson2-1.22.0:0
	>=app-maven/google-oauth-client-java6-1.20.0:0
	>=app-maven/jetty-jmx-8.1.9_p20130131:0
	>=app-maven/jetty-server-8.1.9_p20130131:0
	>=app-maven/joda-time-2.9.2:0
	>=app-maven/util-1.4.1:0
	>=app-maven/woodstox-core-asl-4.1.2:0
	>=app-maven/xz-1.0:0
	>=dev-java/jackson-2.8.5:2
	>=dev-java/jackson-annotations-2.8.5:2
	>=dev-java/jackson-databind-2.8.5:2
	>=dev-java/slf4j-log4j12-1.7.7:0
	>=dev-java/stax2-api-4.0.0:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-cloud-dataflow-java-sdk-all-0.4.150727.pom
# junit:junit:4.11 -> >=dev-java/junit-4.12:4
# org.hamcrest:hamcrest-all:1.3 -> >=app-maven/hamcrest-all-1.3:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hamcrest-all-1.3:0
	>=dev-java/junit-4.12:4"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-annotations-2,jackson-2,jackson-databind-2,google-api-client,google-api-services-bigquery,google-api-services-compute,google-api-services-dataflow,google-api-services-datastore-protobuf,google-api-services-pubsub,google-api-services-storage,auto-service,gcsio,util,google-cloud-dataflow-java-proto-library-all,google-http-client,google-http-client-jackson2,google-oauth-client-java6,joda-time,avro,commons-compress,stax2-api,woodstox-core-asl,jetty-jmx,jetty-server,slf4j-log4j12,slf4j-log4j12,xz"
JAVA_CLASSPATH_EXTRA="junit-4,hamcrest-all"
