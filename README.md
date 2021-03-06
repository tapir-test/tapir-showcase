# tapir-showcase

This showcase illustrates how to write ui regression tests with [tapir](https://www.tapir-test.io).

The showcase is divided into two parts:
* [Google](google/README.md)
* [Wikipedia](wikipedia/README.md)

## Prerequisites
tapir needs at least a Java 8 JDK.

You can run the showcase from Eclipse or via [Apache Maven](https://maven.apache.org/).

We advice you to follow the [installation instruction on the tapir website](https://www.tapir-test.io/docs/gettingstarted/installation/).

## What is covered?
The showcase is not intended to cover all tapir features. It just illustrates how you can get started. Nevertheless there are some interesting aspects you might investigate further:
* General [Structure](https://www.tapir-test.io/docs/usingtapir/code-structure/)
* Integration of [Selenium WebDriver](https://www.tapir-test.io/docs/selenium/core/)
* Usage of [Page Objects](https://www.tapir-test.io/docs/usingtapir/page-objects/)
* Implementation of [Custom Components](https://www.tapir-test.io/docs/customization/htmlcomponents/)
* Integration with [JUnit](https://www.tapir-test.io/docs/extensions/junit/)
* Test [Documentation](https://www.tapir-test.io/docs/extensions/documentation/)
* Visualization of test results with [Allure](https://www.tapir-test.io/docs/extensions/allure/)

To get a more detailed explanation consult the README of the showcases: [Google](google/README.md), [Wikipedia](wikipedia/README.md).

## How to run?

First of all you need to clone the repository (or download the zip file):

```
git clone https://github.com/tapir-test/tapir-showcase.git
```

By default, both projects are configured to use Chrome as browser. You can switch this in the *test.properties* files located in *src/test/resources*. To use Chrome you have to install the browser and download the corresponding [Chromedriver](https://sites.google.com/a/chromium.org/chromedriver/).
You can specify the path of the Chromedriver via the property *chrome.chromedriver.binary* in the *test.properties* or you pass it as a system property.

The browser specific configuration parameters are documented [here](https://www.tapir-test.io/docs/selenium/browser/).


For running with Maven you just have to type:
```
mvn clean integration-test
```

In Eclipse you can perform a right click and choose *Run As* | *JUnit Test*.
