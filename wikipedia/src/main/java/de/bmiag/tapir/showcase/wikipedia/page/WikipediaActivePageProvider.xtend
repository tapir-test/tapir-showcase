package de.bmiag.tapir.showcase.wikipedia.page

import org.openqa.selenium.By
import org.openqa.selenium.WebDriver
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Component

/**
 * Provides the active Wikipedia page by parsing the css classes at the body tag. See {@link #getActivePage()} for additional
 * information.
 * 
 * @author Oliver Libutzki {@literal <}oliver.libutzki@bmiag.de{@literal >}
 * @since 2.0.0
 */
@Component
class WikipediaActivePageProvider {

	private static final String PAGE_PREFIX = "page-"

	@Autowired
	WebDriver webDriver

	/**
	 * Returns the active Wikipedia page by parsing the css classes at the body tag. It searches for a page-* class and returns
	 * the suffix.<br>
	 * Example:<br>
	 * For the css class "page-Main_Page" it returns "Main_Page".
	 * 
	 * @return the active Wikipedia page
	 */
	def String getActivePage() {
		val bodyElement = webDriver.findElement(By.tagName("body"))
		bodyElement.getAttribute("class").split(" ").findFirst[startsWith(PAGE_PREFIX)]?.substring(PAGE_PREFIX.length)
	}

}
