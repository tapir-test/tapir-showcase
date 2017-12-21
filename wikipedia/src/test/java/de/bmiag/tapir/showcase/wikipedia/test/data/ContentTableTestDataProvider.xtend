package de.bmiag.tapir.showcase.wikipedia.test.data

import org.springframework.stereotype.Component

@Component
class ContentTableTestDataProvider {

	def Iterable<WikipediaContentTableExpectaton> testData() {
		#[
			WikipediaContentTableExpectaton.build [
				searchTerm = "Tapir"
				contentElementExpectations = #[
					ContentElementExpectation.build [
						number = 1
						headline = "Species"
					]
				]
			],
			WikipediaContentTableExpectaton.build [
				searchTerm = "Selenium"
				contentElementExpectations = #[
					ContentElementExpectation.build [
						number = 1
						headline = "Characteristics"
					],
					ContentElementExpectation.build [
						number = 3
						headline = "History"
					]
				]
			],
			WikipediaContentTableExpectaton.build [
				searchTerm = "Xtend"
				contentElementExpectations = #[
					ContentElementExpectation.build [
						number = 1
						headline = "History"
					],
					ContentElementExpectation.build [
						number = 2
						headline = "Philosophy"
					],
					ContentElementExpectation.build [
						number = 3
						headline = "Semantics"
					]
				]
			]
		]
	}

}
