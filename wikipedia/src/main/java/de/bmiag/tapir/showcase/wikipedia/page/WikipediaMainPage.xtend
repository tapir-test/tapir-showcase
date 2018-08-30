package de.bmiag.tapir.showcase.wikipedia.page

import de.bmiag.tapir.core.annotation.reference.Reference
import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.page.annotation.Page
import de.bmiag.tapir.page.annotation.PageActiveCheck

@Page
@UseExtension(#[WikipediaActivePageProvider])
class WikipediaMainPage implements PageActiveCheck {

	@Reference
	WikipediaHeader header

	override isPageActive() {
		activePage == "Main_Page"
	}

}
