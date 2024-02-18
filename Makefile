.PHONY: install
install:
	npm ci

.PHONY: test
test:
	npm test

.PHONY: format
format:
	npm run format

.PHONY: run
run:
	@for f in `find ./example -type f -name '*.js' | sort`; do \
		echo $${f}; \
		node $${f}; \
		echo ""; \
	done

.PHONY: version-patch
version-patch:
	npm version patch

.PHONY: version-minor
version-minor:
	npm version minor

.PHONY: publish
publish:
	npm publish --access=public
