COMPONENT = ./node_modules/.bin/component

build: components
	@$(COMPONENT) build --dev -o ./public

components: component.json
	@$(COMPONENT) install --dev

clean:
	@rm -fr components
	@rm -f ./public/build.js
	@rm -f ./public/build.css

.PHONY: clean test
