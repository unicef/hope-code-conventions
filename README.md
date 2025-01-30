# HOPE Code Conventions


These conde conventions are intended to be used with [nitpick](https://nitpick.readthedocs.io).


## How to use it:

In your `pyproject.toml` put this:

        [tool.nitpick]
        style = [
            "github://unicef/hope-code-conventions@main/django/django.toml"
        ]
        cache = "1 day"
