SHELL := /bin/bash

.PHONY: help new-feature check-tree

help:
	@echo "Available targets:"
	@echo "  make new-feature SLUG=<feature-slug>"
	@echo "  make check-tree"

new-feature:
	@if [[ -z "$(SLUG)" ]]; then \
		echo "Usage: make new-feature SLUG=<feature-slug>"; \
		exit 1; \
	fi
	@bash scripts/new-feature.sh "$(SLUG)"

check-tree:
	@find . -maxdepth 3 -type f | sort
