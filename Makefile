# =========================
# Configuration
# =========================
DOC_NAME := main
TEX_DIR := docs
BUILD_DIR := build

LATEX := pdflatex
LATEX_FLAGS := -interaction=nonstopmode -halt-on-error

# =========================
# Targets
# =========================
.PHONY: all pdf clean

all: pdf

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEX) $(LATEX_FLAGS) -output-directory=$(BUILD_DIR) $(TEX_DIR)/$(DOC_NAME).tex
	$(LATEX) $(LATEX_FLAGS) -output-directory=$(BUILD_DIR) $(TEX_DIR)/$(DOC_NAME).tex

clean:
	rm -rf $(BUILD_DIR)
