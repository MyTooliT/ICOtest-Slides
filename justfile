# -- Variables -----------------------------------------------------------------

slides := "ICOtest.md"

# -- Recipes -------------------------------------------------------------------

# Create HTML version of slides and watch for changes
[default]
[group('documentation')]
slides:
	marp --preview {{slides}}
