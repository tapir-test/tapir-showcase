package de.bmiag.tapir.showcase.wikipedia.component

import de.bmiag.tapir.ui.api.TapirElement
import java.util.List
import org.openqa.selenium.NoSuchElementException

/** 
 * Representation of the content table on a content page.
 * 
 * @author Oliver Libutzki {@literal <}oliver.libutzki@bmiag.de{@literal >}
 * @since 2.0.0
 */
interface ContentTable extends TapirElement {

	/** 
	 * Returns all the first level elements.
	 * @return all the first level elements
	 */
	def List<ContentElement> getElements()
	
	/** 
	 * Returns all the first level elements that match the given criteria.
	 * 
	 * @param elementSelectionCriteria Criteria which has to be fulfilled
	 * @return all the first level elements that match the given criteria.
	 */
	def List<ContentElement> findElements( (ContentElement)=>boolean elementSelectionCriteria )
	
	/** 
	 * Returns all the first first level element that matches the given criteria. If there is no matching element, a {@link NoSuchElementException} is thrown.
	 * @param elementSelectionCriteria Criteria which has to be fulfilled.
	 * @return all the first level elements that match the given criteria
	 * @throws NoSuchElementException if no element matches the given criteria
	 */
	def ContentElement findSingleElement( (ContentElement)=>boolean elementSelectionCriteria )

}
