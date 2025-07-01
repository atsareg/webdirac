.PHONY: build test clean

build: clean
	mkdocs build -f docs/mkdocs.yml
	cp -r docs/images public
	cp docs/index.html public
	cp -r docs/assets public

test: clean
	mkdocs build --strict --verbose -f docs/mkdocs.yml
	cp -r docs/images public
	cp docs/index.html public
	cp -r docs/assets public

clean:
	rm -rf public/*
