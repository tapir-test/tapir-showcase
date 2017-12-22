package de.bmiag.tapir.showcase.google.pages.component.impl

import de.bmiag.tapir.core.annotation.useextension.UseExtension
import de.bmiag.tapir.htmlbasic.api.Link
import de.bmiag.tapir.selenium.element.AbstractSingleSeleniumElement
import de.bmiag.tapir.selenium.element.SeleniumElementFactory
import de.bmiag.tapir.showcase.google.pages.component.Listbox
import de.bmiag.tapir.util.extensions.WaitExtensions
import org.openqa.selenium.By
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.config.ConfigurableBeanFactory
import org.springframework.context.annotation.Scope
import org.springframework.stereotype.Component

@Component
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
@UseExtension(WaitExtensions)
class ListboxImpl extends AbstractSingleSeleniumElement implements Listbox {

	@Autowired
	extension SeleniumElementFactory

	override getOptions() {
		waitForCondition[!suggestionWebElements.empty]
		suggestionWebElements.map[getSeleniumElement(Link)].toList
	}

	def protected getSuggestionWebElements() {
		webElement.findElements(By.xpath("//div[@class='sbqs_c']")).filter[!text.empty]
	}

}
