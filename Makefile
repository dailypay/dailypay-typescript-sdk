.PHONY: generate-all generate-sdk generate-tests run-test

# Generate SDK and tests, then run tests
generate-all:
	$(MAKE) generate-sdk
	$(MAKE) generate-tests
	$(MAKE) run-test

# Generate the SDK from OpenAPI spec
generate-sdk:
	speakeasy run -t typescript

# Generate tests from OpenAPI spec
generate-tests:
	speakeasy configure tests

# Run SDK tests (requires compiled SDK in dist/)
run-test:
	speakeasy test
