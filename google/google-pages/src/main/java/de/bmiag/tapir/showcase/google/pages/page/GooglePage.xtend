package de.bmiag.tapir.showcase.google.pages.page

import de.bmiag.tapir.htmlbasic.api.Button
import de.bmiag.tapir.htmlbasic.api.TextField
import de.bmiag.tapir.page.annotation.Page
import de.bmiag.tapir.page.annotation.PageActiveCheck
import de.bmiag.tapir.selenium.annotation.SeleniumElement
import de.bmiag.tapir.selenium.service.BrowserInteractionService
import de.bmiag.tapir.showcase.google.pages.component.Listbox
import org.springframework.beans.factory.annotation.Autowired

@Page
class GooglePage implements PageActiveCheck {

	@Autowired
	extension BrowserInteractionService

	@SeleniumElement(name="q")
	TextField queryField

	@SeleniumElement(name="btnG")
	Button searchButton

	@SeleniumElement(className="erkvQe")
	Listbox suggestionList

	override isPageActive() {
		title.contains("Google")
	}

}
