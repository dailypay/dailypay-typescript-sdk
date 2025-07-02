# Colors
YELLOW := \033[1;33m
CYAN := \033[1;36m
GREEN := \033[1;32m
NC := \033[0m

define print_banner
	@echo ""
	@echo "$(YELLOW)=========================================$(NC)"
	@echo "$(CYAN)>>> $1$(NC)"
	@echo "$(YELLOW)=========================================$(NC)"
	@echo ""
endef

define print_end_banner
	@echo ""
	@echo "$(YELLOW)=========================================$(NC)"
	@echo "$(GREEN)>>> $1$(NC)"
	@echo "$(YELLOW)=========================================$(NC)"
	@echo ""
endef
.PHONY: generate-all generate-sdk generate-tests run-test

# Generate SDK and tests, then run tests
generate-all:
	$(call print_banner,"Generating SDK and tests, then running tests")
	$(MAKE) generate-sdk
	$(MAKE) generate-tests
	$(MAKE) run-test
	$(call print_end_banner,"SDK and tests were generated successfully!")

# Generate the SDK from OpenAPI spec
generate-sdk:
	$(call print_banner,"Generating TypeScript SDK from OpenAPI spec")
	speakeasy run -t typescript
	$(call print_end_banner,"SDK generated.")

# Generate tests from OpenAPI spec
generate-tests:
	$(call print_banner,"Generating tests from OpenAPI spec")
	speakeasy configure tests
	$(call print_end_banner,"Tests generated.")

# Run SDK tests (requires compiled SDK in dist/)
run-test:
	$(call print_banner,"Running SDK tests")
	speakeasy test
	$(call print_end_banner,"All tests completed.")
