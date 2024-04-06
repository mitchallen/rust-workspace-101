# Default target executed when no arguments are given to make.
default: build

# Sets the Rust toolchain to use. Override by setting RUST_TOOLCHAIN in your environment.
RUST_TOOLCHAIN ?= stable
CARGO = cargo +$(RUST_TOOLCHAIN)

# Project-specific variables
PROJECT1 = project1
PROJECT2 = project2

.PHONY: build test run clean release build-project1 build-project2

# Build all projects
build: 
	$(CARGO) build

# Test all projects
test:
	$(CARGO) test

# Run a specific project (e.g., make run PROJECT=project1)
run:
	$(CARGO) run -p $(PROJECT)

# Clean up the project
clean:
	$(CARGO) clean

# Release builds (optimized)
release:
	$(CARGO) build --release

# Build project1 specifically
build-project1:
	$(CARGO) build -p $(PROJECT1)

# Build project2 specifically
build-project2:
	$(CARGO) build -p $(PROJECT2)
