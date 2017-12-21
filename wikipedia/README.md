# Wikipedia Showcase

The showcase for Wikipedia is a single Maven project. In *src/main/java* you can find the page objects and custom UI components. The test suites and classes are located in *src/test/java*.

This showcase covers the following features/aspects:
* Page Objects: [WikipediaMainPage](src/main/java/de/bmiag/tapir/showcase/wikipedia/page/WikipediaMainPage.xtend), [WikipediaContentPage](src/main/java/de/bmiag/tapir/showcase/wikipedia/page/WikipediaContentPage.xtend)
* Page Components: [WikipediaHeader](src/main/java/de/bmiag/tapir/showcase/wikipedia/page/WikipediaHeader.xtend)
* Page Active Assertion: [WikipediaMainPage](src/main/java/de/bmiag/tapir/showcase/wikipedia/page/WikipediaMainPage.xtend) by using [WikipediaActivePageProvider](src/main/java/de/bmiag/tapir/showcase/wikipedia/page/WikipediaActivePageProvider.xtend)
* Custom UI Component Interfaces: [ContentElement](src/main/java/de/bmiag/tapir/showcase/wikipedia/component/ContentElement.xtend), [ContentTable](src/main/java/de/bmiag/tapir/showcase/wikipedia/component/WikipediaContentTable.xtend)
* Custom UI Component Implementation: [ContentElementImpl](src/main/java/de/bmiag/tapir/showcase/wikipedia/component/impl/ContentElementImpl.xtend), [ContentTableImpl](src/main/java/de/bmiag/tapir/showcase/wikipedia/component/impl/ContentTableImpl.xtend)
* Test Suites: [WikipediaTestSuite](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaTestSuite.xtend)
* Test Classes: [WikipediaSmokeTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaSmokeTest.xtend), [WikipediaContentTableTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaContentTableTest.xtend)
* Test Documentation (@Title, @Description): [WikipediaTestSuite](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaTestSuite.xtend), [WikipediaSmokeTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaSmokeTest.xtend), [WikipediaContentTableTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaContentTableTest.xtend)
* Immutable types: [ContentElementExpectation](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/data/ContentElementExpectation.xtend),
[WikipediaContentTableExpectaton](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/data/WikipediaContentTableExpectaton.xtend)
* Custom labels for types: [WikipediaContentTableExpectaton](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/data/WikipediaContentTableExpectaton.xtend)
* Assert post page: [WikipediaSmokeTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaSmokeTest.xtend)
* Internal data provider: [WikipediaContentTableTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaContentTableTest.xtend)
* External data provider: [WikipediaContentTableTest](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/WikipediaContentTableTest.xtend) by using [ContentTableTestDataProvider](src/test/java/de/bmiag/tapir/showcase/wikipedia/test/data/ContentTableTestDataProvider.xtend)
