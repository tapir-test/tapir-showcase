package de.bmiag.tapir.showcase.google.systemtest;

import de.bmiag.tapir.bootstrap.annotation.BootstrapConfiguration
import org.springframework.context.annotation.PropertySource


@BootstrapConfiguration
@PropertySource(value = "classpath:test.properties")
class GoogleSystemtestConfiguration {

}
