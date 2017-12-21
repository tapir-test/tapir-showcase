package de.bmiag.tapir.showcase.google.pages.component

import de.bmiag.tapir.htmlbasic.api.Link
import de.bmiag.tapir.ui.api.TapirElement
import java.util.List

interface Listbox extends TapirElement {

	/** 
	 * Returns the listbox options
	 * @return listbox options
	 */
	def List<Link> getOptions()

}
