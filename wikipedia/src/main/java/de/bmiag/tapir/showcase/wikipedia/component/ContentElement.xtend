package de.bmiag.tapir.showcase.wikipedia.component

import de.bmiag.tapir.ui.api.Clickable
import de.bmiag.tapir.ui.api.TapirElement

/** 
 * Representation of a single element in the content table.
 * 
 * @author Oliver Libutzki {@literal <}oliver.libutzki@bmiag.de{@literal >}
 * @since 2.0.0
 */
interface ContentElement extends TapirElement, Clickable {

	/** 
	 * Returns the chapter number
	 * @return the chapter number
	 */
	def Integer getNumber()

	/** 
	 * Returns the chapter headline
	 * @return the chapter headline
	 */
	def String getHeadline()

}
