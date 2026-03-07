SHELL := /bin/bash

.PHONY: help new-feature check-tree validate-specs

help:
	@echo "Available targets:"
	@echo "  make new-feature SLUG=<feature-slug> LANG=<cn|en>"
	@echo "  make check-tree"
	@echo "  make validate-specs"

new-feature:
	@if [[ -z "$(SLUG)" ]]; then \
		echo "Usage: make new-feature SLUG=<feature-slug> LANG=<cn|en>"; \
		exit 1; \
	fi
	@FEATURE_LANG="$(if $(filter command line,$(origin LANG)),$(LANG),cn)"; \
	FEATURE_LANG="$$FEATURE_LANG" bash scripts/new-feature.sh "$(SLUG)"

check-tree:
	@find . -maxdepth 3 -type f | sort

validate-specs:
	@bash scripts/validate-spec-artifacts.sh
