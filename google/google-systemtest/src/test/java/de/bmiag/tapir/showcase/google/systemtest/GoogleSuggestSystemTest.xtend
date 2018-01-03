package de.bmiag.tapir.showcase.google.systemtest

import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.datasource.resource.annotations.Resource
import de.bmiag.tapir.execution.annotations.parameter.IteratedParameter
import de.bmiag.tapir.execution.annotations.step.Step
import de.bmiag.tapir.execution.annotations.testclass.TestClass
import de.bmiag.tapir.selenium.service.BrowserInteractionService
import de.bmiag.tapir.showcase.google.pages.page.GooglePage
import de.bmiag.tapir.showcase.google.systemtest.data.SearchTermExpectation
import org.springframework.beans.factory.annotation.Autowired

@TestClass
@UseExtension(BrowserInteractionService)
class GoogleSuggestSystemTest {

	@Autowired
	GooglePage googlePage

	@Step
	def void openWebsite() {
		openURL("http://www.google.com/webhp?complete=1&hl=en")
	}

	@Step
	def void assertSuggestions(@IteratedParameter @Resource("classpath:/de/bmiag/tapir/showcase/google/systemtest/data/searchTermExpectations.csv") SearchTermExpectation searchTermExpectation) {
		googlePage.queryField.text = searchTermExpectation.searchTerm
		assertThat(googlePage.suggestionList.options.map[text], hasItems(searchTermExpectation.expectedSuggestions))
	}

}
