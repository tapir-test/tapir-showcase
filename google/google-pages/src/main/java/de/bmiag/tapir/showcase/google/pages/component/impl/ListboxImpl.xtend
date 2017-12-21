package de.bmiag.tapir.showcase.google.pages.component.impl

import de.bmiag.tapir.htmlbasic.api.Link
import de.bmiag.tapir.selenium.element.AbstractSingleSeleniumElement
import de.bmiag.tapir.selenium.element.SeleniumElementFactory
import de.bmiag.tapir.showcase.google.pages.component.Listbox
import org.openqa.selenium.By
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.config.ConfigurableBeanFactory
import org.springframework.context.annotation.Scope
import org.springframework.stereotype.Component

@Component
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
class ListboxImpl extends AbstractSingleSeleniumElement implements Listbox {

	@Autowired
	extension SeleniumElementFactory

	override getOptions() {
		val webElements = webElement.findElements(By.xpath("//div[@class='sbqs_c']")).filter[!text.empty]
		webElements.map[getSeleniumElement(Link)].toList
	}

}
