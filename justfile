# -- Variables -----------------------------------------------------------------

slides := "ICOtest.md"
picture_directory := "Pictures"
build_directory := "build"

# -- Recipes -------------------------------------------------------------------

# Create HTML version of slides and watch for changes
[default]
[group('preview')]
preview:
	marp --preview {{slides}} &

# Create PDF version of slides
[group('build')]
pdf:
	marp --allow-local-files {{slides}} --pdf

# Copy resources to build directory
[group('build')]
[private]
init-build:
	mkdir -p {{build_directory}}
	cp {{slides}} {{build_directory}}
	cp -r {{picture_directory}} {{build_directory}}

# Build slides with Docker
[group('build')]
build: init-build
	docker run \
		--rm -v "$PWD:/home/marp/app/" \
		-e LANG=$LANG marpteam/marp-cli \
		-o build/index.html \
		{{build_directory}}/{{slides}}

# Remove build directory
[group('build')]
clean:
	rm -r {{build_directory}}
