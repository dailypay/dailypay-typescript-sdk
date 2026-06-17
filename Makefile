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
.PHONY: generate-sdk

# Generate the SDK from OpenAPI spec
generate-sdk:
	$(call print_banner,'Generating TypeScript SDK from OpenAPI spec')
	speakeasy run -t typescript
	$(call print_end_banner,'SDK generated.')
