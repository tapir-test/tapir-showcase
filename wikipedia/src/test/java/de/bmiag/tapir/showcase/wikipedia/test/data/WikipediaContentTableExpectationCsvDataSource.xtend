package de.bmiag.tapir.showcase.wikipedia.test.data

import com.google.common.collect.Multimaps
import de.bmiag.tapir.datasource.api.DataSource
import java.io.InputStreamReader
import org.apache.commons.csv.CSVFormat
import org.apache.commons.io.FilenameUtils
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.core.convert.ConversionService
import org.springframework.core.io.Resource
import org.springframework.stereotype.Component

@Component
class WikipediaContentTableExpectationCsvDataSource implements DataSource<Resource, WikipediaContentTableExpectation> {

	@Autowired
	CSVFormat csvFormat;

	@Autowired
	ConversionService conversionService;

	override canHandle(Resource resource) {
		FilenameUtils.getExtension(resource.getFilename()).equalsIgnoreCase("csv")
	}

	override getData(Resource resource) {
		val records = csvFormat.parse(new InputStreamReader(resource.getInputStream())).records
		val searchTermMap = Multimaps.index(records, [get("SearchTerm")])
		searchTermMap.asMap.entrySet.map [ entry |
			WikipediaContentTableExpectation.build [
				searchTerm = entry.key
				contentElementExpectations = entry.value.map [ csvRecord |
					ContentElementExpectation.build [
						number = conversionService.convert(csvRecord.get("ContentNumber"), int)
						headline = csvRecord.get("ContentHeadline")
					]
				]
			]
		]
	}

	override getSelectorType() {
		Resource
	}

}
