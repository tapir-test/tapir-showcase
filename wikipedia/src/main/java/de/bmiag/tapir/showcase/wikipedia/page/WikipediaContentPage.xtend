package de.bmiag.tapir.showcase.wikipedia.page

import de.bmiag.tapir.core.annotation.reference.Reference
import de.bmiag.tapir.htmlbasic.api.Label
import de.bmiag.tapir.page.annotation.Page
import de.bmiag.tapir.selenium.annotation.SeleniumElement
import de.bmiag.tapir.showcase.wikipedia.component.ContentTable

@Page
class WikipediaContentPage {

	@Reference
	WikipediaHeader header

	@SeleniumElement(id="firstHeading")
	Label headline

	@SeleniumElement(id="toc")
	ContentTable contentTable

}
