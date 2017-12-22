package de.bmiag.tapir.showcase.google.unittest

import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.junit.annotations.UnitTest
import de.bmiag.tapir.selenium.service.BrowserInteractionService
import de.bmiag.tapir.showcase.google.pages.page.GooglePage
import org.junit.Test
import org.springframework.beans.factory.annotation.Autowired

@UnitTest
@UseExtension(BrowserInteractionService)
class GoogleSuggestTest {

	@Autowired
	GooglePage googlePage

	@Test
	def void testSuggestions() {
		openURL("http://www.google.com/webhp?complete=1&hl=en")
		googlePage.queryField.text = "Cheese"
		assertThat(googlePage.suggestionList.options.map[text], hasItems("cheese", "cheesecake"))
	}

}
