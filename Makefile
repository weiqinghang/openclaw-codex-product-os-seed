SHELL := /bin/bash

.PHONY: help new-feature check-tree validate-specs

help:
	@echo "可用目标："
	@echo "  make new-feature SLUG=<feature-slug>"
	@echo "  make check-tree"
	@echo "  make validate-specs"

new-feature:
	@if [[ -z "$(SLUG)" ]]; then \
		echo "用法：make new-feature SLUG=<feature-slug>"; \
		exit 1; \
	fi
	@bash scripts/new-feature.sh "$(SLUG)"

check-tree:
	@find . -maxdepth 3 -type f | sort

validate-specs:
	@bash scripts/validate-spec-artifacts.sh
