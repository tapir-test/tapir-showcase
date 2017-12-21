package de.bmiag.tapir.showcase.wikipedia.component.impl

import de.bmiag.tapir.selenium.element.AbstractSingleSeleniumElement
import de.bmiag.tapir.selenium.element.SeleniumElementFactory
import de.bmiag.tapir.showcase.wikipedia.component.ContentElement
import de.bmiag.tapir.showcase.wikipedia.component.ContentTable
import java.util.Collections
import java.util.List
import org.openqa.selenium.By
import org.openqa.selenium.NoSuchElementException
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.config.ConfigurableBeanFactory
import org.springframework.context.annotation.Scope
import org.springframework.stereotype.Component

/**
 * Implementation of {@link ContentTable}.
 * 
 * @author Oliver Libutzki {@literal <}oliver.libutzki@bmiag.de{@literal >}
 * @since 2.0.0
 */
@Component
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
class ContentTableImpl extends AbstractSingleSeleniumElement implements ContentTable {

	@Autowired
	SeleniumElementFactory seleniumElementFactory

	override getElements() {
		findElementsInternal([true], false)
	}

	override findElements((ContentElement)=>boolean elementSelectionCriteria) {
		findElementsInternal(elementSelectionCriteria, false)
	}

	override findSingleElement((ContentElement)=>boolean elementSelectionCriteria) {
		val elements = findElementsInternal(elementSelectionCriteria, true)
		val firstLink = elements.head
		if(firstLink !== null) {
			firstLink
		} else {
			throw new NoSuchElementException("No element found which matches the given criteria");
		}
	}

	def protected List<ContentElement> findElementsInternal((ContentElement)=>boolean elementSelectionCriteria,
		boolean returnFirstMatch) {
		val List<ContentElement> results = newArrayList
		val webElements = webElement.findElements(By.cssSelector("div>ul>li"))
		for (webElement : webElements) {
			val element = seleniumElementFactory.getSeleniumElement(webElement, ContentElement)
			if(elementSelectionCriteria.apply(element)) {
				if(returnFirstMatch) {
					return Collections.singletonList(element)
				} else {
					results += element
				}
			}
		}
		results
	}

}
