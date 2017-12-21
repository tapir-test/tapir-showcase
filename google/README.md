# Google Showcase

The showcase for Wikipedia is a Multi-Module Maven project which contains three modules:
* google-pages: Contains the page objects and custom UI components
* google-systemtest: Uses tapir's execution runtime for ui testing
* google-unittest: Uses unit test for ui testing

 In *src/main/java* you can find the page objects and custom UI components. The test suites and classes are located in *src/test/java*.

This showcase covers the following features/aspects:
* Modularization: The test code is separated from the pages / UI components
* Page Objects: [GooglePage](google-pages/src/main/java/de/bmiag/tapir/showcase/google/pages/page/GooglePage.xtend)
* Page Active Assertion: [GooglePage](google-pages/src/main/java/de/bmiag/tapir/showcase/google/pages/page/GooglePage.xtend)
* Custom UI Component Interfaces: [Listbox](google-pages/src/main/java/de/bmiag/tapir/showcase/google/pages/component/Listbox.xtend)
* Custom UI Component Implementation: [ListboxImpl](google-pages/src/main/java/de/bmiag/tapir/showcase/google/pages/component/impl/ListboxImpl.xtend)
* Unit tests: [GoogleSuggestTest](google-unittest/src/test/java/de/bmiag/tapir/showcase/google/unittest/GoogleSuggestTest.xtend)
* Test Classes: [GoogleSuggestSystemTest](google-systemtest/src/test/java/de/bmiag/tapir/showcase/google/systemtest/GoogleSuggestSystemTest.xtend)
* Immutable types: [SearchTermExpectation](google-systemtest/src/test/java/de/bmiag/tapir/showcase/google/systemtest/data/SearchTermExpectation.xtend)
* Custom labels for types: [SearchTermExpectation](google-systemtest/src/test/java/de/bmiag/tapir/showcase/google/systemtest/data/SearchTermExpectation.xtend)
* External data provider: [GoogleSuggestSystemTest](google-systemtest/src/test/java/de/bmiag/tapir/showcase/google/systemtest/GoogleSuggestSystemTest.xtend) by using [SearchTermProvider](google-systemtest/src/test/java/de/bmiag/tapir/showcase/google/systemtest/data/SearchTermProvider.xtend)
