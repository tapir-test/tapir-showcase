package de.bmiag.tapir.showcase.google.systemtest.data

import de.bmiag.tapir.data.Immutable
import de.bmiag.tapir.core.annotation.label.CustomLabel
import de.bmiag.tapir.datasource.csv.annotations.CsvDataSource

@Immutable
@CsvDataSource
@CustomLabel
class SearchTermExpectation {
	String searchTerm
	String[] expectedSuggestions
	
	override String getCustomLabel() {
		'''«searchTerm» («expectedSuggestions.join(", ")»)'''
	}
	
}
