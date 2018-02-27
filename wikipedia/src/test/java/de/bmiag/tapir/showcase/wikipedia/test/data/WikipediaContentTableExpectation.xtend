package de.bmiag.tapir.showcase.wikipedia.test.data

import de.bmiag.tapir.core.annotation.label.CustomLabel
import de.bmiag.tapir.core.annotation.label.LabelPart
import de.bmiag.tapir.data.Immutable
import java.util.List

@Immutable
@CustomLabel
class WikipediaContentTableExpectation {
	
	@LabelPart
	String searchTerm
	
	List<ContentElementExpectation> contentElementExpectations
	
}
