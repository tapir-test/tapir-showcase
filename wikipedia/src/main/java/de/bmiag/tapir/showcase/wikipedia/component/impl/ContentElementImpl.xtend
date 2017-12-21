package de.bmiag.tapir.showcase.wikipedia.component.impl

import de.bmiag.tapir.selenium.element.AbstractSingleSeleniumElement
import de.bmiag.tapir.showcase.wikipedia.component.ContentElement
import org.openqa.selenium.By
import org.springframework.beans.factory.config.ConfigurableBeanFactory
import org.springframework.context.annotation.Scope
import org.springframework.stereotype.Component

@Component
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
class ContentElementImpl extends AbstractSingleSeleniumElement implements ContentElement {

	override getNumber() {
		Integer.valueOf(webElement.findElement(By.className("tocnumber")).text)
	}

	override getHeadline() {
		webElement.findElement(By.className("toctext")).text
	}

	override click() {
		webElement.click
	}

}
