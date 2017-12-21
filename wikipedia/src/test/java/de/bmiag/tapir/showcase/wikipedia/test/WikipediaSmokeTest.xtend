package de.bmiag.tapir.showcase.wikipedia.test

import de.bmiag.tapir.execution.annotations.documentation.Description
import de.bmiag.tapir.execution.annotations.documentation.Title
import de.bmiag.tapir.execution.annotations.step.Step
import de.bmiag.tapir.execution.annotations.testclass.TestClass
import de.bmiag.tapir.pageexecution.annotation.AssertPostPage
import de.bmiag.tapir.selenium.service.BrowserInteractionService
import de.bmiag.tapir.showcase.wikipedia.page.WikipediaMainPage
import org.springframework.beans.factory.annotation.Autowired

@Title("Wikipedia Smoke Test")
@Description("Visits the Wikipedia website")
@TestClass
class WikipediaSmokeTest {
	@Autowired
	extension BrowserInteractionService
	
	@Step
	@Title("Visit Wikipedia")
	@AssertPostPage(WikipediaMainPage)
	def void openWebsite() {
		openURL("https://en.wikipedia.org")
	}
}
