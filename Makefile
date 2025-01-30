.PHONY: django

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

help:
	@echo "HOPE Code convenetion"
	@echo
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)


django:  ## creates/updates django related test files
	nitpick --project tests/django fix

clean:  ## clean devel
	@find tests -type f -not -name "pyproject.toml" -not -name ".gitignore" | xargs rm
	@find tests/ -type d -name ".cache" | xargs rm -fr
	@git checkout tests/django
