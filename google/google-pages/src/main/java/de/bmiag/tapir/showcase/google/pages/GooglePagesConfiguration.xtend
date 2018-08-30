package de.bmiag.tapir.showcase.google.pages;

import de.bmiag.tapir.bootstrap.annotation.ModuleConfiguration
import org.springframework.boot.autoconfigure.AutoConfigureOrder

@ModuleConfiguration
@AutoConfigureOrder(GooglePagesConfiguration.AUTO_CONFIGURE_ORDER)
class GooglePagesConfiguration {

	public static final int AUTO_CONFIGURE_ORDER = 0
}
