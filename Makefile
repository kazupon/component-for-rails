COMPONENT = ./node_modules/.bin/component

build: components
	@$(COMPONENT) build --dev
	@cp  ./build/build.js ./app/assets/javascripts/application.js
	@cp  ./build/build.css ./app/assets/stylesheets/application.css

components: component.json
	@$(COMPONENT) install --dev

clean:
	@rm -fr ./components
	@rm -fr ./build
	@rm -f ./app/assets/javascripts/application.js
	@rm -f ./app/assets/stylesheets/application.css

.PHONY: clean test
