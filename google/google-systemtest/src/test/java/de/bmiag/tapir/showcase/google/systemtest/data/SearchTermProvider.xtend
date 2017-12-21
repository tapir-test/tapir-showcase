package de.bmiag.tapir.showcase.google.systemtest.data

import java.util.List
import org.springframework.stereotype.Component

@Component
class SearchTermProvider {

	def List<SearchTermExpectation> assertSuggestionsSearchTermExpectationParameter() {
		#[
			SearchTermExpectation.build [
				searchTerm = "Cheese"
				expectedSuggestions = #{
					"cheese",
					"cheesecake"
				}
			],
			SearchTermExpectation.build [
				searchTerm = "Sausage"
				expectedSuggestions = #{
					"sausage dog"
				}
			]
		]
	}
}
