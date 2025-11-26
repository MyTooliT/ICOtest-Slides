# -- Variables -----------------------------------------------------------------

slides := "ICOtest.md"
picture_directory := "Pictures"
build_directory := "build"

# -- Recipes -------------------------------------------------------------------

# Create HTML version of slides and watch for changes
[default]
[group('documentation')]
slides:
	marp --preview {{slides}}

# Copy resources to build directory
init-build:
	mkdir -p {{build_directory}}
	cp {{slides}} {{build_directory}}
	cp -r {{picture_directory}} {{build_directory}}
