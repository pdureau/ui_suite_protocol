.PHONY: check

check:
	- composer validate --no-check-all --strict
	- security-checker security:check composer.lock
	- prettier --write *.yml
	- prettier --write templates/patterns/*/*.yml
	- twig-lint lint templates/
