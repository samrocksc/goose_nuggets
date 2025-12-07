# Makefile for running goose recipes

# Default target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  solid      - Generate SOLID principles challenges"
	@echo "  cleancode  - Generate Clean Code challenges"
	@echo "  gof        - Generate Gang of Four patterns challenges"
	@echo "  dsa        - Generate Data Structures & Algorithms challenges"
	@echo "  all        - Generate all challenge types"
	@echo "  check      - Check if goose is installed"

# Check if goose exists
.PHONY: check
check:
	@which goose > /dev/null || (echo "Error: goose not found. Please install goose first." && exit 1)
	@echo "Goose is installed: $$(which goose)"

# Generate SOLID principles challenges
.PHONY: solid
solid: check
	goose run --recipe challenge_generator.yaml --params challenge_type="SOLID"

# Generate Clean Code challenges
.PHONY: cleancode
cleancode: check
	goose run --recipe challenge_generator.yaml --params challenge_type="Clean Code"

# Generate Gang of Four patterns challenges
.PHONY: gof
gof: check
	goose run --recipe challenge_generator.yaml --params challenge_type="GoF"

# Generate Data Structures & Algorithms challenges
.PHONY: dsa
dsa: check
	goose run --recipe challenge_generator.yaml --params challenge_type="DSA"

# Generate all challenge types
.PHONY: all
all: check solid cleancode gof dsa

# Default target
.PHONY: default
default: help
