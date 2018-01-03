package de.bmiag.tapir.showcase.wikipedia.test

import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.datasource.resource.annotations.Resource
import de.bmiag.tapir.execution.annotations.behaviour.ProceedOnFailure
import de.bmiag.tapir.execution.annotations.documentation.Description
import de.bmiag.tapir.execution.annotations.documentation.Title
import de.bmiag.tapir.execution.annotations.parameter.IteratedParameter
import de.bmiag.tapir.execution.annotations.step.Step
import de.bmiag.tapir.execution.annotations.testclass.TestClass
import de.bmiag.tapir.selenium.service.BrowserInteractionService
import de.bmiag.tapir.showcase.wikipedia.page.WikipediaContentPage
import de.bmiag.tapir.showcase.wikipedia.page.WikipediaMainPage
import de.bmiag.tapir.showcase.wikipedia.test.data.ContentElementExpectation
import de.bmiag.tapir.showcase.wikipedia.test.data.WikipediaContentTableExpectaton
import org.springframework.beans.factory.annotation.Autowired

@Title("Wikipedia Content Table Test")
@Description("Asserts content table entries for given content pages")
@TestClass
@UseExtension(BrowserInteractionService)
@ProceedOnFailure
class WikipediaContentTableTest {
	
	@Autowired
	WikipediaMainPage mainPage
	
	@Autowired
	WikipediaContentPage contentPage
	
	@IteratedParameter
	@Resource("classpath:/de/bmiag/tapir/showcase/wikipedia/test/data/searchTerms.csv")
	WikipediaContentTableExpectaton wikipediaContentTableExpectaton
	
	@Step
	@Title("Visit Wikipedia")
	def void openWikipediaWebsite() {
		openURL("https://en.wikipedia.org")
	}
	
	@Step
	def void searchForContent() {
		mainPage.header.searchField.text = wikipediaContentTableExpectaton.searchTerm
		mainPage.header.searchButton.click
		assertThat(contentPage.headline.text, is(wikipediaContentTableExpectaton.searchTerm))
	}
	
	@Step
	def void assertContentTableEntry(@IteratedParameter ContentElementExpectation contentElementExpectation) {
		val contentElement = contentPage.contentTable.findSingleElement[number == contentElementExpectation.number]
		assertThat(contentElement.headline, is(contentElementExpectation.headline))
	}
	
	override assertContentTableEntryContentElementExpectationParameter() {
		wikipediaContentTableExpectaton.contentElementExpectations
	}

	
}
