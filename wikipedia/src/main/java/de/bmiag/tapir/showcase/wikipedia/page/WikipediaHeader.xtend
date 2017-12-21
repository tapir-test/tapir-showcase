package de.bmiag.tapir.showcase.wikipedia.page

import de.bmiag.tapir.htmlbasic.api.Button
import de.bmiag.tapir.htmlbasic.api.TextField
import de.bmiag.tapir.page.annotation.PageComponent
import de.bmiag.tapir.selenium.annotation.SeleniumElement

@PageComponent
class WikipediaHeader {
	
	@SeleniumElement(id = "searchInput")
	TextField searchField
	
	@SeleniumElement(id = "searchButton")
	Button searchButton
}
