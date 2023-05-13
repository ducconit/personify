.PHONY: setup
setup:
	# Setup environment for development
	./scripts/setup.sh

.PHONY: test
test:
	php artisan test

.PHONY: ide-helper
ide-helper: ide-helper-clear
	# We simply combine the commands into a single command "make ide-helper".
	php artisan ide-helper:generate
	php artisan ide-helper:models
	php artisan ide-helper:meta

.PHONY: ide-helper-clear
ide-helper-clear:
	php artisan clear-compiled
	if [ -f ".phpstorm.meta.php" ]; then rm .phpstorm.meta.php; fi
	if [ -f "_ide_helper.php" ]; then rm _ide_helper.php; fi
	if [ -f "_ide_helper_models.php" ]; then rm _ide_helper_models.php; fi
