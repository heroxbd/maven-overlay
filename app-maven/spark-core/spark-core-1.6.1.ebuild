# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-core_2.10-1.6.1.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-core_2.10/1.6.1/spark-core_2.10-1.6.1-sources.jar --slot 2.10 --keywords "~amd64" --ebuild spark-core-1.6.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-core_2.10/1.6.1/spark-core_2.10-1.6.1-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-core_2.10:1.6.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-core_2.10-1.6.1.pom
# com.clearspring.analytics:stream:2.7.0 -> >=app-maven/stream-2.7.0:0
# com.fasterxml.jackson.core:jackson-databind:2.4.4 -> >=dev-java/jackson-databind-2.8.5:2
# com.fasterxml.jackson.module:jackson-module-scala_2.10:2.4.4 -> >=app-maven/jackson-module-scala-2.4.4:2.10
# com.google.code.findbugs:jsr305:1.3.9 -> >=app-maven/jsr305-bin-1.3.9:0
# com.ning:compress-lzf:1.0.3 -> >=app-maven/compress-lzf-1.0.3:0
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# com.twitter:chill-java:0.5.0 -> >=app-maven/chill-java-0.8.0:0
# com.twitter:chill_2.10:0.5.0 -> >=app-maven/chill-0.5.0:2.10
# com.typesafe.akka:akka-remote_2.10:2.3.11 -> >=app-maven/akka-remote-2.3.11:2.10
# com.typesafe.akka:akka-slf4j_2.10:2.3.11 -> >=app-maven/akka-slf4j-2.3.11:2.10
# commons-net:commons-net:2.2 -> >=dev-java/commons-net-3.2:0
# io.dropwizard.metrics:metrics-core:3.1.2 -> >=app-maven/metrics-core-3.1.2:0
# io.dropwizard.metrics:metrics-graphite:3.1.2 -> >=app-maven/metrics-graphite-3.1.2:0
# io.dropwizard.metrics:metrics-json:3.1.2 -> >=app-maven/metrics-json-3.1.2:0
# io.dropwizard.metrics:metrics-jvm:3.1.2 -> >=app-maven/metrics-jvm-3.1.2:0
# io.netty:netty-all:4.0.29.Final -> >=app-maven/netty-all-4.0.29:0
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# net.java.dev.jets3t:jets3t:0.7.1 -> >=app-maven/jets3t-0.7.1:0
# net.jpountz.lz4:lz4:1.3.0 -> >=app-maven/lz4-1.3.0:0
# net.razorvine:pyrolite:4.9 -> >=app-maven/pyrolite-4.9:0
# net.sf.py4j:py4j:0.9 -> >=app-maven/py4j-0.10.1:0
# org.apache.avro:avro-mapred:1.7.7 -> >=app-maven/avro-mapred-1.7.7:0
# org.apache.commons:commons-lang3:3.3.2 -> >=app-maven/commons-lang3-3.3.2:0
# org.apache.commons:commons-math3:3.4.1 -> >=app-maven/commons-math3-3.4.1:0
# org.apache.curator:curator-recipes:2.4.0 -> >=app-maven/curator-recipes-2.4.0:0
# org.apache.hadoop:hadoop-client:2.2.0 -> >=app-maven/hadoop-client-bin-2.2.0:0
# org.apache.ivy:ivy:2.4.0 -> >=app-maven/ivy-2.4.0:0
# org.apache.mesos:mesos:0.21.1 -> >=app-maven/mesos-0.21.1:0
# org.apache.spark:spark-launcher_2.10:1.6.1 -> >=app-maven/spark-launcher-1.6.1:2.10
# org.apache.spark:spark-network-common_2.10:1.6.1 -> >=app-maven/spark-network-common-1.6.1:2.10
# org.apache.spark:spark-network-shuffle_2.10:1.6.1 -> >=app-maven/spark-network-shuffle-1.6.1:2.10
# org.apache.spark:spark-unsafe_2.10:1.6.1 -> >=app-maven/spark-unsafe-1.6.1:2.10
# org.apache.xbean:xbean-asm5-shaded:4.4 -> >=app-maven/xbean-asm5-shaded-4.4:0
# org.eclipse.jetty.orbit:javax.servlet:3.0.0.v201112011016 -> >=app-maven/javax-servlet-3.0.0_p201112011016:0
# org.json4s:json4s-jackson_2.10:3.2.10 -> >=app-maven/json4s-jackson-3.2.10:2.10
# org.roaringbitmap:RoaringBitmap:0.5.11 -> >=app-maven/RoaringBitmap-0.5.11:0
# org.scala-lang:scala-library:2.10.5 -> >=app-maven/scala-library-2.11.8:0
# org.slf4j:jcl-over-slf4j:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.slf4j:jul-to-slf4j:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.slf4j:slf4j-api:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.slf4j:slf4j-log4j12:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# org.tachyonproject:tachyon-client:0.8.2 -> >=app-maven/tachyon-client-0.8.2:0
# org.xerial.snappy:snappy-java:1.1.2 -> >=dev-java/snappy-1.0.3_rc3:1.0
# oro:oro:2.0.8 -> >=app-maven/oro-2.0.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-core_2.10-1.6.1.pom
CDEPEND="
	>=app-maven/RoaringBitmap-0.5.11:0
	>=app-maven/akka-remote-2.3.11:2.10
	>=app-maven/akka-slf4j-2.3.11:2.10
	>=app-maven/avro-mapred-1.7.7:0
	>=app-maven/chill-0.5.0:2.10
	>=app-maven/chill-java-0.8.0:0
	>=app-maven/commons-lang3-3.3.2:0
	>=app-maven/commons-math3-3.4.1:0
	>=app-maven/compress-lzf-1.0.3:0
	>=app-maven/curator-recipes-2.4.0:0
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=app-maven/ivy-2.4.0:0
	>=app-maven/jackson-module-scala-2.4.4:2.10
	>=app-maven/javax-servlet-3.0.0_p201112011016:0
	>=app-maven/jersey-core-1.9:0
	>=app-maven/jersey-server-1.9:0
	>=app-maven/jets3t-0.7.1:0
	>=app-maven/json4s-jackson-3.2.10:2.10
	>=app-maven/jsr305-bin-1.3.9:0
	>=app-maven/lz4-1.3.0:0
	>=app-maven/mesos-0.21.1:0
	>=app-maven/metrics-core-3.1.2:0
	>=app-maven/metrics-graphite-3.1.2:0
	>=app-maven/metrics-json-3.1.2:0
	>=app-maven/metrics-jvm-3.1.2:0
	>=app-maven/netty-all-4.0.29:0
	>=app-maven/oro-2.0.8:0
	>=app-maven/py4j-0.10.1:0
	>=app-maven/pyrolite-4.9:0
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/spark-launcher-1.6.1:2.10
	>=app-maven/spark-network-common-1.6.1:2.10
	>=app-maven/spark-network-shuffle-1.6.1:2.10
	>=app-maven/spark-unsafe-1.6.1:2.10
	>=app-maven/stream-2.7.0:0
	>=app-maven/tachyon-client-0.8.2:0
	>=app-maven/unused-1.0.0:0
	>=app-maven/xbean-asm5-shaded-4.4:0
	>=dev-java/commons-net-3.2:0
	>=dev-java/jackson-databind-2.8.5:2
	>=dev-java/log4j-1.2.17:0
	>=dev-java/slf4j-log4j12-1.7.7:0
	>=dev-java/snappy-1.0.3_rc3:1.0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-core_2.10-1.6.1.pom
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/guava-10.0.1:10"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="stream,jackson-databind-2,jackson-module-scala-2.10,jsr305-bin,compress-lzf,jersey-core,jersey-server,chill-java,chill-2.10,akka-remote-2.10,akka-slf4j-2.10,commons-net,metrics-core,metrics-graphite,metrics-json,metrics-jvm,netty-all,log4j,jets3t,lz4,pyrolite,py4j,avro-mapred,commons-lang3,commons-math3,curator-recipes,hadoop-client-bin,ivy,mesos,spark-launcher-2.10,spark-network-common-2.10,spark-network-shuffle-2.10,spark-unsafe-2.10,xbean-asm5-shaded,javax-servlet,json4s-jackson-2.10,RoaringBitmap,scala-library,slf4j-log4j12,slf4j-log4j12,slf4j-log4j12,slf4j-log4j12,unused,tachyon-client,snappy-1.0,oro"
JAVA_CLASSPATH_EXTRA="guava-10"
