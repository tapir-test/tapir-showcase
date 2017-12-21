package de.bmiag.tapir.showcase.wikipedia.page

import de.bmiag.tapir.core.annotation.reference.Reference
import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.page.annotation.Page
import de.bmiag.tapir.page.annotation.PageActiveAssertion
import de.bmiag.tapir.util.extensions.TapirAssertions

@Page
@UseExtension(#[TapirAssertions, WikipediaActivePageProvider])
class WikipediaMainPage implements PageActiveAssertion {

	@Reference
	WikipediaHeader header

	override assertPageActive() throws AssertionError {
		assertThat(activePage, is("Main_Page"))
	}

}
