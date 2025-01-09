.PHONY: django

help:
	@echo "HOPE Code convenetion"

django:
	nitpick --project tests/django fix

clean:
	@find tests -type f -not -name "pyproject.toml" -not -name ".gitignore" | xargs rm
	@find tests/ -type d -name ".cache" | xargs rm -fr
	@git reset --hard tests/
