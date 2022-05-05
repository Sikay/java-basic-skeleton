# ☕🚀 Java Basic Skeleton

## ℹ️ Introduction

This is a repository intended to serve as a starting point if you want to bootstrap a Java project with JUnit and Gradle.

## 🏁 How To Start

1. Install Java 11: `brew install corretto` or download it [here](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html)
2. Set it as your default JVM:
   ```nano
   export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
   export PATH=$PATH:$JAVA_HOME/bin
   ```
3. Clone this repository: `git clone https://github.com/Sikay/java-basic-skeleton`.
4. Start container: `make docker-up`
5. Run the tests and plugins verification tasks: `make docker-test`
6. Check mysql container: `make ping-mysql`
7. Start developing!
8. When you finish, to stop containers: `make docker-down`

## ☝️ How to update dependencies

* Gradle (current version: 5.6 - [releases](https://gradle.org/releases/)):
`./gradlew wrapper --gradle-version=5.6 --distribution-type=bin` or modifying the [gradle-wrapper.properties](gradle/wrapper/gradle-wrapper.properties#L3)
* JUnit (current version: 5.5.1 - [releases](https://junit.org/junit5/docs/snapshot/release-notes/index.html)):
[`build.gradle:11`](build.gradle#L11-L12)

## 😃 Thanks to

This is a modified template from the codelyTV template.

<img src="http://codely.tv/wp-content/uploads/2016/05/cropped-logo-codelyTV.png" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>


[![CodelyTV](https://img.shields.io/badge/codely-tv-green.svg?style=flat-square)](https://codely.tv)
[![Workflow Status](https://github.com/CodelyTV/java-basic-skeleton/workflows/Main%20Workflow/badge.svg)](https://github.com/CodelyTV/java-basic-skeleton/actions)
