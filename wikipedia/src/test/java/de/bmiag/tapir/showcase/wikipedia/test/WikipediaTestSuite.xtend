package de.bmiag.tapir.showcase.wikipedia.test

import de.bmiag.tapir.execution.annotations.documentation.Description
import de.bmiag.tapir.execution.annotations.documentation.Title
import de.bmiag.tapir.execution.annotations.suite.TestSuite

@Title("Wikipedia Test Suite")
@Description("This suite includes all Wikipedia website test classes")
@TestSuite(#[
	WikipediaSmokeTest,
	WikipediaContentTableTest
])
class WikipediaTestSuite {
}
