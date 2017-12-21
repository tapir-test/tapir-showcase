package de.bmiag.tapir.showcase.wikipedia;

import de.bmiag.tapir.bootstrap.annotation.BootstrapConfiguration
import org.springframework.context.annotation.PropertySource


@BootstrapConfiguration
@PropertySource(value = "classpath:test.properties")
public class WikipediaTestConfiguration {

}
