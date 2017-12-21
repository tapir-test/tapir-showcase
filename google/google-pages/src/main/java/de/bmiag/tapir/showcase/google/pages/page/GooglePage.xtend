package de.bmiag.tapir.showcase.google.pages.page

import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.htmlbasic.api.Button
import de.bmiag.tapir.htmlbasic.api.Label
import de.bmiag.tapir.htmlbasic.api.TextField
import de.bmiag.tapir.page.annotation.Page
import de.bmiag.tapir.page.annotation.PageActiveAssertion
import de.bmiag.tapir.selenium.annotation.SeleniumElement
import de.bmiag.tapir.selenium.service.BrowserInteractionService
import de.bmiag.tapir.showcase.google.pages.component.Listbox
import de.bmiag.tapir.util.extensions.TapirAssertions
import org.springframework.beans.factory.annotation.Autowired

@Page
@UseExtension(TapirAssertions)
class GooglePage implements PageActiveAssertion {

	@Autowired
	extension BrowserInteractionService

	@SeleniumElement(name="q")
	TextField queryField

	@SeleniumElement(name="btnG")
	Button searchButton

	@SeleniumElement(className="sbsb_a")
	Listbox suggestionList

	@SeleniumElement(id="resultStats")
	Label resultStats

	override assertPageActive() {
		assertThat(title, containsString("Google"))
	}

}
