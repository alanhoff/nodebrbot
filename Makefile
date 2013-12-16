REPORTER=spec

test: hint
	@./node_modules/.bin/mocha \
		--reporter $(REPORTER) -b -t 10000 test/*.js

test-watch:
	@./node_modules/.bin/mocha \
		--reporter $(REPORTER) -b -t 10000 -w test/*.js

hint:
	@./node_modules/.bin/jshint src

.PHONY: test test-watch